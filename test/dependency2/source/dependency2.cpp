#include <iostream>
#include <dependency2/version.h>

void ns::dependencyFunction2() {
  std::cout << "Using dependency version " << DEPENDENCY_VERSION << std::endl;
}
