#include <fmt/format.h>
#include <transitive_dependency/export.h>
#include <transitive_dependency/version.h>

void TRANSITIVE_DEPENDENCY_EXPORT transitiveDependencyFunction() {
  fmt::print("Using transitive_dependency version {}\n", TRANSITIVE_DEPENDENCY_VERSION);
  fmt::print("Dependency version major: {}\n", TRANSITIVE_DEPENDENCY_VERSION_MAJOR);
  fmt::print("Dependency version minor: {}\n", TRANSITIVE_DEPENDENCY_VERSION_MINOR);
  fmt::print("Dependency version patch: {}\n", TRANSITIVE_DEPENDENCY_VERSION_PATCH);
  fmt::print("Dependency version build: {}\n", TRANSITIVE_DEPENDENCY_VERSION_BUILD);
}
