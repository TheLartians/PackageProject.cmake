#include <dependency/dependency.h>
#include <dependency/version.h>
#include <dependency2/dependency2.h>
#include <dependency2/version.h>
#include <string>

int main() {
  dependencyFunction();
  ns::dependencyFunction2();
  return DEPENDENCY_VERSION == std::string("1.2.3") && DEPENDENCY2_VERSION == std::string("4.5.6") ? 0 : 1;
}
