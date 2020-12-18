#include <dependency/dependency.h>
#include <dependency/version.h>
#include <namespaced_dependency/namespaced_dependency.h>
#include <namespaced_dependency/version.h>
#include <string>

int main() {
  dependencyFunction();
  ns::namespacedDependencyFunction();
  return DEPENDENCY_VERSION == std::string("1.2.3") && NAMESPACED_DEPENDENCY_VERSION == std::string("4.5.6") ? 0 : 1;
}
