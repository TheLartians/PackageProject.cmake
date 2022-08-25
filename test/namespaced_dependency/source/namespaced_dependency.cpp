#include <namespaced_dependency/namespaced_dependency.h>

#include <namespaced_dependency/version.h>

#include <iostream>

namespace ns {
  void namespacedDependencyFunction() {
    std::cout << "Using namespaced_dependency version " << NAMESPACED_DEPENDENCY_VERSION
              << std::endl;

    std::cout << "Dependency version major: " << NAMESPACED_DEPENDENCY_VERSION_MAJOR << std::endl;
    std::cout << "Dependency version minor: " << NAMESPACED_DEPENDENCY_VERSION_MINOR << std::endl;
    std::cout << "Dependency version patch: " << NAMESPACED_DEPENDENCY_VERSION_PATCH << std::endl;
    std::cout << "Dependency version build: " << NAMESPACED_DEPENDENCY_VERSION_TWEAK << std::endl;
  }
}  // namespace ns
