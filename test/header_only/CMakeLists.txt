cmake_minimum_required(VERSION 3.14...3.22)

project(
  header_only
  VERSION 1.0
  LANGUAGES CXX
  DESCRIPTION "A header only dependency for testing PackageProject.cmake"
)

add_library(${PROJECT_NAME} INTERFACE)

target_include_directories(
  dependency PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
                    $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../.. PackageProject)

packageProject(
  NAME ${PROJECT_NAME}
  VERSION ${PROJECT_VERSION}
  BINARY_DIR ${PROJECT_BINARY_DIR}
  INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include
  INCLUDE_DESTINATION include/${PROJECT_NAME}-${PROJECT_VERSION}
  VERSION_HEADER "${PROJECT_NAME}/version.h"
  DEPENDENCIES ""
  CPACK "${TEST_CPACK}"
)
