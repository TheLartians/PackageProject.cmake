#include <iostream>
#include <namespaced_dependency/version.h>

namespace ns {
	void namespacedDependencyFunction() {
		std::cout << "Using namespaced_dependency version " << NAMESPACED_DEPENDENCY_VERSION << std::endl;
	}
}
