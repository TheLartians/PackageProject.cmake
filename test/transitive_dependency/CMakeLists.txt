cmake_minimum_required(VERSION 3.14...3.22)

project(
  transitive_dependency
  VERSION 7.8.9.21948124
  LANGUAGES CXX
  DESCRIPTION "A transitive dependency for testing PackageProject.cmake"
)

include(cmake/CPM.cmake)

CPMAddPackage(
  NAME fmt
  GIT_TAG 7.1.3
  GITHUB_REPOSITORY fmtlib/fmt
  OPTIONS "FMT_INSTALL YES"
)

CPMAddPackage(
  NAME cxxopts
  GITHUB_REPOSITORY jarro2783/cxxopts
  VERSION 2.2.0
  OPTIONS "CXXOPTS_BUILD_EXAMPLES Off" "CXXOPTS_BUILD_TESTS Off"
)

# Set default visibility to hidden for all targets
set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(CMAKE_VISIBILITY_INLINES_HIDDEN YES)

add_library(${PROJECT_NAME} SHARED source/transitive_dependency.cpp)
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_17)
target_link_libraries(${PROJECT_NAME} PUBLIC fmt::fmt-header-only cxxopts)

target_include_directories(
  transitive_dependency PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
                               $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../.. PackageProject)

packageProject(
  NAME ${PROJECT_NAME}
  VERSION ${PROJECT_VERSION}
  NAMESPACE ${PROJECT_NAME}
  BINARY_DIR ${PROJECT_BINARY_DIR}
  INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include
  INCLUDE_DESTINATION include/${PROJECT_NAME}-${PROJECT_VERSION}
  VERSION_HEADER "transitive_dependency/version.h"
  EXPORT_HEADER "transitive_dependency/export.h"
  DEPENDENCIES "fmt 7.1.3;cxxopts 2.2.0"
  CPACK "${TEST_CPACK}"
)
