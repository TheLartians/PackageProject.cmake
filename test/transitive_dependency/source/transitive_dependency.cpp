#include <fmt/format.h>
#include <transitive_dependency/export.h>
#include <transitive_dependency/version.h>

void TRANSITIVE_DEPENDENCY_EXPORT transitiveDependencyFunction() {
  fmt::print("Using transitive_dependency version {}\n", TRANSITIVE_DEPENDENCY_VERSION);
}
