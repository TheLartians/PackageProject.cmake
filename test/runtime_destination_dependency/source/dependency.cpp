#include <runtime_destination_dependency/version.h>

#include <iostream>

void runtimeDestinationDependency() {
  std::cout << "Using dependency version " << RUNTIME_DESTINATION_DEPENDENCY_VERSION << std::endl;
  std::cout << "Dependency version major: " << RUNTIME_DESTINATION_DEPENDENCY_VERSION_MAJOR
            << std::endl;
  std::cout << "Dependency version minor: " << RUNTIME_DESTINATION_DEPENDENCY_VERSION_MINOR
            << std::endl;
  std::cout << "Dependency version patch: " << RUNTIME_DESTINATION_DEPENDENCY_VERSION_PATCH
            << std::endl;
  std::cout << "Dependency version build: " << RUNTIME_DESTINATION_DEPENDENCY_VERSION_TWEAK
            << std::endl;
}
