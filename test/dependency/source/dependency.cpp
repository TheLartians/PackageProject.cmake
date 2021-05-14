#include <dependency/version.h>

#include <iostream>

void dependencyFunction() {
  std::cout << "Using dependency version " << DEPENDENCY_VERSION << std::endl;
  std::cout << "Dependency version major: " << DEPENDENCY_VERSION_MAJOR << std::endl;
  std::cout << "Dependency version minor: " << DEPENDENCY_VERSION_MINOR << std::endl;
  std::cout << "Dependency version patch: " << DEPENDENCY_VERSION_PATCH << std::endl;
  std::cout << "Dependency version build: " << DEPENDENCY_VERSION_BUILD << std::endl;
}
