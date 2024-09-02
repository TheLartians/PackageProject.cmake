cmake_minimum_required(VERSION 3.14...3.24)

option(TEST_INSTALLED_VERSION "Test the version found by find_package" OFF)

project(
  PackageProjectTest
  VERSION 1.0
  LANGUAGES CXX
)

if(TEST_INSTALLED_VERSION)
  find_package(dependency 1.2 REQUIRED)
  find_package(header_only 1.0 REQUIRED)
  find_package(namespaced_dependency 4.5.6 REQUIRED)
  find_package(transitive_dependency 7.8.9 REQUIRED)
else()

  set(CMAKE_VERIFY_INTERFACE_HEADER_SETS ON)

  if(TEST_CPACK)
    set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Foo Bar <foo@bar.local>")
  endif()

  add_subdirectory(dependency)
  add_subdirectory(header_only)
  add_subdirectory(namespaced_dependency)
  add_subdirectory(transitive_dependency)
endif()

add_executable(main main.cpp)

target_link_libraries(
  main dependency header_only ns::namespaced_dependency
  transitive_dependency::transitive_dependency
)

enable_testing()
add_test(NAME test COMMAND main)
