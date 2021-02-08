#include <dependency/dependency.h>
#include <dependency/version.h>
#include <namespaced_dependency/namespaced_dependency.h>
#include <namespaced_dependency/version.h>
#include <transitive_dependency/transitive_dependency.h>
#include <transitive_dependency/version.h>
#include <string>

int main() {
  dependencyFunction();
  ns::namespacedDependencyFunction();
  transitiveDependencyFunction();
  auto result = true;
  result &= DEPENDENCY_VERSION == std::string("1.2.3");
  result &= NAMESPACED_DEPENDENCY_VERSION == std::string("4.5.6");
  result &= TRANSITIVE_DEPENDENCY_VERSION == std::string("7.8.9");
  return result ? 0 : 1;
}
