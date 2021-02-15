cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

project(StyleCheck)

set(CPM_DOWNLOAD_VERSION 0.28.1)
set(CPM_DOWNLOAD_LOCATION "${CMAKE_BINARY_DIR}/cmake/CPM_${CPM_DOWNLOAD_VERSION}.cmake")

if(NOT (EXISTS ${CPM_DOWNLOAD_LOCATION}))
  message(STATUS "Downloading CPM.cmake v${CPM_DOWNLOAD_VERSION}")
  file(DOWNLOAD
       https://github.com/cpm-cmake/CPM.cmake/releases/download/v${CPM_DOWNLOAD_VERSION}/CPM.cmake
       ${CPM_DOWNLOAD_LOCATION}
  )
endif()

include(${CPM_DOWNLOAD_LOCATION})

CPMAddPackage(
  NAME Format.cmake
  VERSION 1.6
  GITHUB_REPOSITORY TheLartians/Format.cmake
  OPTIONS "FORMAT_CHECK_CMAKE ON"
)
