#include <dependency/dependency.h>
#include <dependency/version.h>
#include <namespaced_dependency/namespaced_dependency.h>
#include <namespaced_dependency/version.h>
#include <transitive_dependency/transitive_dependency.h>
#include <transitive_dependency/version.h>
#include <header_only/adder.h>
#include <header_only/version.h>

#include <string>

int main() {
  dependencyFunction();
  ns::namespacedDependencyFunction();
  transitiveDependencyFunction();
  auto result = true;
  result &= DEPENDENCY_VERSION == std::string("1.2");
  result &= DEPENDENCY_VERSION_MAJOR == 1;
  result &= DEPENDENCY_VERSION_MINOR == 2;
  result &= DEPENDENCY_VERSION_PATCH == 0;
  result &= DEPENDENCY_VERSION_TWEAK == 0;
  result &= NAMESPACED_DEPENDENCY_VERSION == std::string("4.5.6");
  result &= NAMESPACED_DEPENDENCY_VERSION_MAJOR == 4;
  result &= NAMESPACED_DEPENDENCY_VERSION_MINOR == 5;
  result &= NAMESPACED_DEPENDENCY_VERSION_PATCH == 6;
  result &= NAMESPACED_DEPENDENCY_VERSION_TWEAK == 0;
  result &= TRANSITIVE_DEPENDENCY_VERSION == std::string("7.8.9.21948124");
  result &= TRANSITIVE_DEPENDENCY_VERSION_MAJOR == 7;
  result &= TRANSITIVE_DEPENDENCY_VERSION_MINOR == 8;
  result &= TRANSITIVE_DEPENDENCY_VERSION_PATCH == 9;
  result &= TRANSITIVE_DEPENDENCY_VERSION_TWEAK == 21948124;
  result &= (5 == add(2,3));
  result &= HEADER_ONLY_VERSION == std::string("1.0");
  result &= HEADER_ONLY_VERSION_MAJOR == 1;
  result &= HEADER_ONLY_VERSION_MINOR == 0;
  result &= HEADER_ONLY_VERSION_PATCH == 0;
  result &= HEADER_ONLY_VERSION_TWEAK == 0;
  return result ? 0 : 1;
}
