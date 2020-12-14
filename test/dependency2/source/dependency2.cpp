#include <iostream>
#include <dependency2/version.h>

namespace ns {
	void dependencyFunction2() {
		std::cout << "Using dependency2 version " << DEPENDENCY2_VERSION << std::endl;
	}
}
