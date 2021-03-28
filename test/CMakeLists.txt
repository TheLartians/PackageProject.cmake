cmake_minimum_required(VERSION 3.14)

option(TEST_INSTALLED_VERSION "Test the version found by find_package" OFF)

project(
  PackageProjectTest
  VERSION 1.0
  LANGUAGES CXX
)

# build all dynamic libraries and executables together at bin directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

if(TEST_INSTALLED_VERSION)
  find_package(dependency 1.2.3 REQUIRED)
  find_package(namespaced_dependency 4.5.6 REQUIRED)
  find_package(transitive_dependency 7.8.9 REQUIRED)
else()
  add_subdirectory(dependency)
  add_subdirectory(namespaced_dependency)
  add_subdirectory(transitive_dependency)
endif()

add_executable(main main.cpp)

target_link_libraries(
  main dependency ns::namespaced_dependency transitive_dependency::transitive_dependency
)

enable_testing()
add_test(NAME test COMMAND main)
