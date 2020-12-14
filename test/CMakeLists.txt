cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

option(TEST_INSTALLED_VERSION "Test the version found by find_package" OFF)

project(PackageProjectTest 
  VERSION 1.0
  LANGUAGES CXX
)

if (TEST_INSTALLED_VERSION)
  find_package(dependency 1.2.3 REQUIRED)
  find_package(ns::dependency2 4.5.6 REQUIRED)
else()
  add_subdirectory(dependency)
  add_subdirectory(dependency2)
endif()

add_executable(test main.cpp)
target_link_libraries(test dependency ns::dependency2)
