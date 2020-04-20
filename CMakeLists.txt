
set(
  PACKAGE_PROJECT_CONFIG_FILE_PATH
  "${CMAKE_CURRENT_LIST_DIR}/Config.cmake.in"
  CACHE INTERNAL
  "The config template for the packageProject script"
)

function(packageProject)

  cmake_parse_arguments(PROJECT "" "NAME;VERSION;INCLUDE_DIR;INCLUDE_DESTINATION;BINARY_DIR" "DEPENDENCIES" ${ARGN})

  include(CMakePackageConfigHelpers)

  write_basic_package_version_file(
    "${PROJECT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake"
    VERSION ${PROJECT_VERSION}
    COMPATIBILITY AnyNewerVersion
  )

  install(
    TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION lib/${PROJECT_NAME}-${PROJECT_VERSION} COMPONENT Runtime
    ARCHIVE DESTINATION lib/${PROJECT_NAME}-${PROJECT_VERSION} COMPONENT Development
    RUNTIME DESTINATION bin/${PROJECT_NAME}-${PROJECT_VERSION} COMPONENT Runtime
    PUBLIC_HEADER DESTINATION include/${PROJECT_NAME}-${PROJECT_VERSION} COMPONENT Development
    BUNDLE DESTINATION bin COMPONENT Runtime
  )

  include(CMakePackageConfigHelpers)

  configure_package_config_file(
    ${PACKAGE_PROJECT_CONFIG_FILE_PATH}
    "${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    INSTALL_DESTINATION lib/cmake/${PROJECT_NAME}-${PROJECT_VERSION}
  )

  install(
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION lib/cmake/${PROJECT_NAME}-${PROJECT_VERSION}
  )

  install(
    FILES 
      "${PROJECT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake"
      "${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    DESTINATION
      lib/cmake/${PROJECT_NAME}-${PROJECT_VERSION}
  )

  install(
    DIRECTORY ${PROJECT_INCLUDE_DIR}/
    DESTINATION ${PROJECT_INCLUDE_DESTINATION}
  )

endfunction()