# Install script for directory: /home/bloo/Coding/Cpp/PackageProject.cmake/test/transitive_dependency

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
  include("/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/_deps/fmt-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/_deps/cxxopts-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/transitive_dependency/PackageProject/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xtransitive_dependency_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/transitive_dependency-7.8.9.21948124" TYPE DIRECTORY FILES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/transitive_dependency/PackageProjectInclude/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xtransitive_dependency_Runtimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/transitive_dependency-7.8.9.21948124/libtransitive_dependency.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/transitive_dependency-7.8.9.21948124/libtransitive_dependency.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/transitive_dependency-7.8.9.21948124/libtransitive_dependency.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/transitive_dependency-7.8.9.21948124" TYPE SHARED_LIBRARY FILES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/transitive_dependency/libtransitive_dependency.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/transitive_dependency-7.8.9.21948124/libtransitive_dependency.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/transitive_dependency-7.8.9.21948124/libtransitive_dependency.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/transitive_dependency-7.8.9.21948124/libtransitive_dependency.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xtransitive_dependency_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xtransitive_dependency_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/transitive_dependency-7.8.9.21948124/transitive_dependencyTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/transitive_dependency-7.8.9.21948124/transitive_dependencyTargets.cmake"
         "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/transitive_dependency/CMakeFiles/Export/lib/cmake/transitive_dependency-7.8.9.21948124/transitive_dependencyTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/transitive_dependency-7.8.9.21948124/transitive_dependencyTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/transitive_dependency-7.8.9.21948124/transitive_dependencyTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/transitive_dependency-7.8.9.21948124" TYPE FILE FILES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/transitive_dependency/CMakeFiles/Export/lib/cmake/transitive_dependency-7.8.9.21948124/transitive_dependencyTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/transitive_dependency-7.8.9.21948124" TYPE FILE FILES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/transitive_dependency/CMakeFiles/Export/lib/cmake/transitive_dependency-7.8.9.21948124/transitive_dependencyTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xtransitive_dependency_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/transitive_dependency-7.8.9.21948124" TYPE FILE FILES
    "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/transitive_dependency/transitive_dependencyConfigVersion.cmake"
    "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/transitive_dependency/transitive_dependencyConfig.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xtransitive_dependency_Developmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/transitive_dependency-7.8.9.21948124" TYPE DIRECTORY FILES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/transitive_dependency/include/")
endif()

