#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "transitive_dependency::transitive_dependency" for configuration ""
set_property(TARGET transitive_dependency::transitive_dependency APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(transitive_dependency::transitive_dependency PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/transitive_dependency-7.8.9.21948124/libtransitive_dependency.so"
  IMPORTED_SONAME_NOCONFIG "libtransitive_dependency.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS transitive_dependency::transitive_dependency )
list(APPEND _IMPORT_CHECK_FILES_FOR_transitive_dependency::transitive_dependency "${_IMPORT_PREFIX}/lib/transitive_dependency-7.8.9.21948124/libtransitive_dependency.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
