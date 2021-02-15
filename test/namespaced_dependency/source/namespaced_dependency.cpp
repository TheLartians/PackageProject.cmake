#include <namespaced_dependency/version.h>

#include <iostream>

namespace ns {
  void namespacedDependencyFunction() {
    std::cout << "Using namespaced_dependency version " << NAMESPACED_DEPENDENCY_VERSION
              << std::endl;
  }
}  // namespace ns
