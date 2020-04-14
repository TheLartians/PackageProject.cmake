# PackageProject.cmake

A small helper script to simplify the CMake packaging process.

## Usage

To create an installable target for your current project, add the following to your CMakeLists.txt.
This example assumes the project to be versioned and the name to be identical to the library to export.
Also the [CPM.cmake](https://github.com/TheLartians/CPM.cmake) should be included.

```cmake
CPMAddPackage(
  NAME PackageProject.cmake
  GITHUB_REPOSITORY TheLartians/PackageProject.cmake
  VERSION 1.0
)

packageProject(
  NAME ${PROJECT_NAME}
  VERSION ${PROJECT_VERSION}
  BINARY_DIR ${PROJECT_BINARY_DIR}
  INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include
  INCLUDE_DESTINATION include/${PROJECT_NAME}-${PROJECT_VERSION}
)
```

If you need extra functionality feel free to open an issue or a PR.

