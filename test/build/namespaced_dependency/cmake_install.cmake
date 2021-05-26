# Install script for directory: /home/bloo/Coding/Cpp/PackageProject.cmake/test/namespaced_dependency

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/namespaced_dependency/PackageProject/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xnamespaced_dependency_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/namespaced_dependency-4.5.6" TYPE DIRECTORY FILES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/namespaced_dependency/PackageProjectInclude/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xnamespaced_dependency_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/namespaced_dependency-4.5.6" TYPE STATIC_LIBRARY FILES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/namespaced_dependency/libnamespaced_dependency.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xnamespaced_dependency_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/namespaced_dependency-4.5.6/namespaced_dependencyTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/namespaced_dependency-4.5.6/namespaced_dependencyTargets.cmake"
         "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/namespaced_dependency/CMakeFiles/Export/lib/cmake/namespaced_dependency-4.5.6/namespaced_dependencyTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/namespaced_dependency-4.5.6/namespaced_dependencyTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/namespaced_dependency-4.5.6/namespaced_dependencyTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/namespaced_dependency-4.5.6" TYPE FILE FILES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/namespaced_dependency/CMakeFiles/Export/lib/cmake/namespaced_dependency-4.5.6/namespaced_dependencyTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/namespaced_dependency-4.5.6" TYPE FILE FILES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/namespaced_dependency/CMakeFiles/Export/lib/cmake/namespaced_dependency-4.5.6/namespaced_dependencyTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xnamespaced_dependency_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/namespaced_dependency-4.5.6" TYPE FILE FILES
    "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/namespaced_dependency/namespaced_dependencyConfigVersion.cmake"
    "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/namespaced_dependency/namespaced_dependencyConfig.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xnamespaced_dependency_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/namespaced_dependency-4.5.6" TYPE DIRECTORY FILES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/namespaced_dependency/include/")
endif()

