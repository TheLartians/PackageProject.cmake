# CMake generated Testfile for 
# Source directory: /home/bloo/Coding/Cpp/PackageProject.cmake/test
# Build directory: /home/bloo/Coding/Cpp/PackageProject.cmake/test/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/main")
set_tests_properties(test PROPERTIES  _BACKTRACE_TRIPLES "/home/bloo/Coding/Cpp/PackageProject.cmake/test/CMakeLists.txt;28;add_test;/home/bloo/Coding/Cpp/PackageProject.cmake/test/CMakeLists.txt;0;")
subdirs("dependency")
subdirs("namespaced_dependency")
subdirs("transitive_dependency")
