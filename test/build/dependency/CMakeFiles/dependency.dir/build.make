# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/870/bin/cmake

# The command to remove a file.
RM = /snap/cmake/870/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bloo/Coding/Cpp/PackageProject.cmake/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bloo/Coding/Cpp/PackageProject.cmake/test/build

# Include any dependencies generated for this target.
include dependency/CMakeFiles/dependency.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependency/CMakeFiles/dependency.dir/compiler_depend.make

# Include the progress variables for this target.
include dependency/CMakeFiles/dependency.dir/progress.make

# Include the compile flags for this target's objects.
include dependency/CMakeFiles/dependency.dir/flags.make

dependency/CMakeFiles/dependency.dir/source/dependency.cpp.o: dependency/CMakeFiles/dependency.dir/flags.make
dependency/CMakeFiles/dependency.dir/source/dependency.cpp.o: ../dependency/source/dependency.cpp
dependency/CMakeFiles/dependency.dir/source/dependency.cpp.o: dependency/CMakeFiles/dependency.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dependency/CMakeFiles/dependency.dir/source/dependency.cpp.o"
	cd /home/bloo/Coding/Cpp/PackageProject.cmake/test/build/dependency && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT dependency/CMakeFiles/dependency.dir/source/dependency.cpp.o -MF CMakeFiles/dependency.dir/source/dependency.cpp.o.d -o CMakeFiles/dependency.dir/source/dependency.cpp.o -c /home/bloo/Coding/Cpp/PackageProject.cmake/test/dependency/source/dependency.cpp

dependency/CMakeFiles/dependency.dir/source/dependency.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dependency.dir/source/dependency.cpp.i"
	cd /home/bloo/Coding/Cpp/PackageProject.cmake/test/build/dependency && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bloo/Coding/Cpp/PackageProject.cmake/test/dependency/source/dependency.cpp > CMakeFiles/dependency.dir/source/dependency.cpp.i

dependency/CMakeFiles/dependency.dir/source/dependency.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dependency.dir/source/dependency.cpp.s"
	cd /home/bloo/Coding/Cpp/PackageProject.cmake/test/build/dependency && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bloo/Coding/Cpp/PackageProject.cmake/test/dependency/source/dependency.cpp -o CMakeFiles/dependency.dir/source/dependency.cpp.s

# Object files for target dependency
dependency_OBJECTS = \
"CMakeFiles/dependency.dir/source/dependency.cpp.o"

# External object files for target dependency
dependency_EXTERNAL_OBJECTS =

dependency/libdependency.a: dependency/CMakeFiles/dependency.dir/source/dependency.cpp.o
dependency/libdependency.a: dependency/CMakeFiles/dependency.dir/build.make
dependency/libdependency.a: dependency/CMakeFiles/dependency.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdependency.a"
	cd /home/bloo/Coding/Cpp/PackageProject.cmake/test/build/dependency && $(CMAKE_COMMAND) -P CMakeFiles/dependency.dir/cmake_clean_target.cmake
	cd /home/bloo/Coding/Cpp/PackageProject.cmake/test/build/dependency && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dependency.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependency/CMakeFiles/dependency.dir/build: dependency/libdependency.a
.PHONY : dependency/CMakeFiles/dependency.dir/build

dependency/CMakeFiles/dependency.dir/clean:
	cd /home/bloo/Coding/Cpp/PackageProject.cmake/test/build/dependency && $(CMAKE_COMMAND) -P CMakeFiles/dependency.dir/cmake_clean.cmake
.PHONY : dependency/CMakeFiles/dependency.dir/clean

dependency/CMakeFiles/dependency.dir/depend:
	cd /home/bloo/Coding/Cpp/PackageProject.cmake/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bloo/Coding/Cpp/PackageProject.cmake/test /home/bloo/Coding/Cpp/PackageProject.cmake/test/dependency /home/bloo/Coding/Cpp/PackageProject.cmake/test/build /home/bloo/Coding/Cpp/PackageProject.cmake/test/build/dependency /home/bloo/Coding/Cpp/PackageProject.cmake/test/build/dependency/CMakeFiles/dependency.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependency/CMakeFiles/dependency.dir/depend

