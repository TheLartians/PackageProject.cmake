cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

option(TEST_INSTALLED_VERSION "Test the version found by find_package" OFF)

project(PackageProjectTest 
  VERSION 1.0
  LANGUAGES CXX
)

if (TEST_INSTALLED_VERSION)
  find_package(dependency 1.2.3 REQUIRED)
  find_package(namespaced_dependency 4.5.6 REQUIRED)
else()
  add_subdirectory(dependency)
  add_subdirectory(namespaced_dependency)
endif()

add_executable(test main.cpp)
target_link_libraries(test dependency ns::namespaced_dependency)
