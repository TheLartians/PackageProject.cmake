
if(NOT "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/_deps/cxxopts-subbuild/cxxopts-populate-prefix/src/cxxopts-populate-stamp/cxxopts-populate-gitinfo.txt" IS_NEWER_THAN "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/_deps/cxxopts-subbuild/cxxopts-populate-prefix/src/cxxopts-populate-stamp/cxxopts-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/_deps/cxxopts-subbuild/cxxopts-populate-prefix/src/cxxopts-populate-stamp/cxxopts-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/bloo/.cache/CPM/cxxopts/d5c328043c71a6a5670c290d8646b093756db962"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/bloo/.cache/CPM/cxxopts/d5c328043c71a6a5670c290d8646b093756db962'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --depth 1 --no-single-branch --config "advice.detachedHead=false" "https://github.com/jarro2783/cxxopts.git" "d5c328043c71a6a5670c290d8646b093756db962"
    WORKING_DIRECTORY "/home/bloo/.cache/CPM/cxxopts"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/jarro2783/cxxopts.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout v2.2.0 --
  WORKING_DIRECTORY "/home/bloo/.cache/CPM/cxxopts/d5c328043c71a6a5670c290d8646b093756db962"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'v2.2.0'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/bloo/.cache/CPM/cxxopts/d5c328043c71a6a5670c290d8646b093756db962"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/bloo/.cache/CPM/cxxopts/d5c328043c71a6a5670c290d8646b093756db962'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/_deps/cxxopts-subbuild/cxxopts-populate-prefix/src/cxxopts-populate-stamp/cxxopts-populate-gitinfo.txt"
    "/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/_deps/cxxopts-subbuild/cxxopts-populate-prefix/src/cxxopts-populate-stamp/cxxopts-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/bloo/Coding/Cpp/PackageProject.cmake/test/build/_deps/cxxopts-subbuild/cxxopts-populate-prefix/src/cxxopts-populate-stamp/cxxopts-populate-gitclone-lastrun.txt'")
endif()

