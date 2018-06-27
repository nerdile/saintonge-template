find_path(GSL_INCLUDE_DIR gsl/gsl_util
    PATH_SUFFIXES gsl/include
    )

MESSAGE( STATUS "GSL_INCLUDE_DIR: " ${GSL_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(GSL DEFAULT_MSG GSL_INCLUDE_DIR)
mark_as_advanced(GSL_INCLUDE_DIR)

set(GSL_INCLUDE_DIRS ${GSL_INCLUDE_DIR})

