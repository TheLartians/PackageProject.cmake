cmake_minimum_required(VERSION 3.14...3.22)

project(
  namespaced_dependency
  VERSION 4.5.6
  LANGUAGES CXX
  DESCRIPTION "A namespaced dependency for testing PackageProject.cmake"
)

set(PROJECT_NAMESPACE "ns")
add_library(${PROJECT_NAME} STATIC source/namespaced_dependency.cpp)
# the alias ${PROJECT_NAMESPACE}::${PROJECT_NAME} is automatically provided by PackageProject.cmake
# if we use the `NAMESPACE` parameter

target_include_directories(
  namespaced_dependency PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
                               $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../.. PackageProject)

packageProject(
  NAME ${PROJECT_NAME}
  VERSION ${PROJECT_VERSION}
  NAMESPACE ${PROJECT_NAMESPACE}
  BINARY_DIR ${PROJECT_BINARY_DIR}
  INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include
  INCLUDE_DESTINATION include/${PROJECT_NAME}-${PROJECT_VERSION}
  VERSION_HEADER "namespaced_dependency/version.h"
  INCLUDE_HEADER_PATTERN "*.h"
  DEPENDENCIES ""
  CPACK "${TEST_CPACK}"
)
