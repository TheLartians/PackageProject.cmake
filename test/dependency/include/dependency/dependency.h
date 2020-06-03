#pragma once

#include <iostream>
#include <dependency/version.h>

inline void dependencyFunction() {
  std::cout << "Using dependency version " << DEPENDENCY_VERSION << std::endl;
}
