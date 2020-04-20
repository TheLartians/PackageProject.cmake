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
  VERSION 1.1
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
  # comma separated list of all dependencies
  DEPENDENCIES ""
)
```

If you need extra functionality feel free to open an issue or a PR.
