cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

project(dependency2
  VERSION 4.5.6
  LANGUAGES CXX
)

set(PROJECT_LIBRARY_NAMESPACE "ns")
add_library(dependency2 source/dependency2.cpp)
add_library(${PROJECT_LIBRARY_NAMESPACE}::${PROJECT_NAME} ALIAS dependency2)

target_include_directories(dependency2
  PUBLIC
    $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../.. ${CMAKE_CURRENT_BINARY_DIR}/PackageProject)

packageProject(
  NAME ${PROJECT_NAME}
  VERSION ${PROJECT_VERSION}
  LIBRARY_NAMESPACE ${PROJECT_LIBRARY_NAMESPACE}
  BINARY_DIR ${PROJECT_BINARY_DIR}
  INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include
  INCLUDE_DESTINATION include/${PROJECT_NAME}-${PROJECT_VERSION}
  VERSION_HEADER "dependency2/version.h"
  DEPENDENCIES ""
)
