#include <dependency/version.h>

#include <iostream>

void dependencyFunction() {
  std::cout << "Using dependency version " << DEPENDENCY_VERSION << std::endl;
}
