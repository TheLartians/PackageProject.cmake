#include <dependency/dependency.h>
#include <dependency/version.h>
#include <string>

int main() {
  dependencyFunction();
  return DEPENDENCY_VERSION == std::string("1.2.3");
}
