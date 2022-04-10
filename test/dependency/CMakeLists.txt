cmake_minimum_required(VERSION 3.14...3.22)

project(
  dependency
  VERSION 1.2
  LANGUAGES CXX
)

add_library(dependency STATIC source/dependency.cpp)

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
  VERSION_HEADER "dependency/version.h"
  DEPENDENCIES ""
)
