cmake_minimum_required(VERSION 3.14...3.22)

project(
  packaging
  VERSION 1.42
  LANGUAGES CXX
  DESCRIPTION "Test project for packaging"
)

add_executable(${PROJECT_NAME} source/packaging.cpp)

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../.. PackageProject)

set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Foo Bar <foo@bar.local>")

packageProject(
  NAME ${PROJECT_NAME}
  VERSION ${PROJECT_VERSION}
  BINARY_DIR ${PROJECT_BINARY_DIR}
  DEPENDENCIES ""
  ARCH_INDEPENDENT NO
  CPACK YES
)
