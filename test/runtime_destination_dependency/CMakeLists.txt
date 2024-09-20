cmake_minimum_required(VERSION 3.14...3.22)

project(
  runtime_destination_dependency
  VERSION 1.5
  LANGUAGES CXX
  DESCRIPTION "A dependency for testing RUNTIME_DESTINATION in PackageProject.cmake"
)

add_library(runtime_destination_dependency STATIC source/dependency.cpp)

target_include_directories(
  runtime_destination_dependency
  PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
         $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../.. PackageProject)

packageProject(
  NAME ${PROJECT_NAME}
  VERSION ${PROJECT_VERSION}
  BINARY_DIR ${PROJECT_BINARY_DIR}
  INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include
  INCLUDE_DESTINATION include/${PROJECT_NAME}-${PROJECT_VERSION}
  VERSION_HEADER "runtime_destination_dependency/version.h"
  RUNTIME_DESTINATION / # this is relative path to <...>/lib
  DEPENDENCIES ""
  CPACK YES
)
