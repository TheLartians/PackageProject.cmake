#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ns::namespaced_dependency" for configuration ""
set_property(TARGET ns::namespaced_dependency APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(ns::namespaced_dependency PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/namespaced_dependency-4.5.6/libnamespaced_dependency.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ns::namespaced_dependency )
list(APPEND _IMPORT_CHECK_FILES_FOR_ns::namespaced_dependency "${_IMPORT_PREFIX}/lib/namespaced_dependency-4.5.6/libnamespaced_dependency.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
