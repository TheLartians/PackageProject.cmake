#include <iostream>
#include <dependency/version.h>

void dependencyFunction() {
  std::cout << "Using dependency version " << DEPENDENCY_VERSION << std::endl;
}
