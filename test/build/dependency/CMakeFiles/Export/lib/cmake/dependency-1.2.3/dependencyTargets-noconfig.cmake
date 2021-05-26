#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "dependency" for configuration ""
set_property(TARGET dependency APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(dependency PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/dependency-1.2.3/libdependency.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS dependency )
list(APPEND _IMPORT_CHECK_FILES_FOR_dependency "${_IMPORT_PREFIX}/lib/dependency-1.2.3/libdependency.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
