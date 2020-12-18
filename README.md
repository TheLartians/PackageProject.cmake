![Test](https://github.com/TheLartians/PackageProject.cmake/workflows/Test/badge.svg)

# PackageProject.cmake

Creating installable CMake scripts always requires a large amount of boilerplate code to get things working.
This small script should simplify the CMake packaging process into a single, easy-to-use command.

## Usage

To create an installable target for your current project, add the following to your CMakeLists.txt.
This example assumes the project to be versioned and the name to be identical to the library to export.
Also the [CPM.cmake](https://github.com/TheLartians/CPM.cmake) script should be included.
See [here](https://github.com/TheLartians/ModernCppStarter/blob/master/CMakeLists.txt) for an example usage.

```cmake
CPMAddPackage(
  NAME PackageProject.cmake
  GITHUB_REPOSITORY TheLartians/PackageProject.cmake
  VERSION 1.3
)

packageProject(
  # the name of the target to export
  NAME ${PROJECT_NAME}
  # the version of the target to export
  VERSION ${PROJECT_VERSION}
  # a temporary directory to create the config files
  BINARY_DIR ${PROJECT_BINARY_DIR}
  # location of the target's public headers
  INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include
  # should match the target's INSTALL_INTERFACE include directory
  INCLUDE_DESTINATION include/${PROJECT_NAME}-${PROJECT_VERSION}
  # semicolon separated list of the project's dependencies
  DEPENDENCIES ""
  # (optional) create a header containing the version info
  # note that the path should be lowercase 
  VERSION_HEADER "${PROJECT_NAME}/version.h"
  # (optional) install your library with a namespace (do NOT add extra '::')
  NAMESPACE ${PROJECT_NAMESPACE}
)
```

If you need extra functionality feel free to open an issue or a PR.
