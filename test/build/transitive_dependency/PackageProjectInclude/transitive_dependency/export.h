
#ifndef TRANSITIVE_DEPENDENCY_EXPORT_H
#define TRANSITIVE_DEPENDENCY_EXPORT_H

#ifdef TRANSITIVE_DEPENDENCY_STATIC_DEFINE
#  define TRANSITIVE_DEPENDENCY_EXPORT
#  define TRANSITIVE_DEPENDENCY_NO_EXPORT
#else
#  ifndef TRANSITIVE_DEPENDENCY_EXPORT
#    ifdef transitive_dependency_EXPORTS
        /* We are building this library */
#      define TRANSITIVE_DEPENDENCY_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define TRANSITIVE_DEPENDENCY_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef TRANSITIVE_DEPENDENCY_NO_EXPORT
#    define TRANSITIVE_DEPENDENCY_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef TRANSITIVE_DEPENDENCY_DEPRECATED
#  define TRANSITIVE_DEPENDENCY_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef TRANSITIVE_DEPENDENCY_DEPRECATED_EXPORT
#  define TRANSITIVE_DEPENDENCY_DEPRECATED_EXPORT TRANSITIVE_DEPENDENCY_EXPORT TRANSITIVE_DEPENDENCY_DEPRECATED
#endif

#ifndef TRANSITIVE_DEPENDENCY_DEPRECATED_NO_EXPORT
#  define TRANSITIVE_DEPENDENCY_DEPRECATED_NO_EXPORT TRANSITIVE_DEPENDENCY_NO_EXPORT TRANSITIVE_DEPENDENCY_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef TRANSITIVE_DEPENDENCY_NO_DEPRECATED
#    define TRANSITIVE_DEPENDENCY_NO_DEPRECATED
#  endif
#endif

#endif /* TRANSITIVE_DEPENDENCY_EXPORT_H */
