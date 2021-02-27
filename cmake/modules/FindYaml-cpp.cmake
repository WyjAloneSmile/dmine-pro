include(FindPackageHandleStandardArgs)

set(LIBYAML-CPP_ROOT_DIR "" CACHE PATH "Folder contains LIBYAML-CPP")

find_path(LIBYAML-CPP_INCLUDE_DIR YAML-CPP PATHS ${LIBYAML-CPP_ROOT_DIR})

find_library(LIBYAML-CPP_LIBRARY YAML-CPP)

find_package_handle_standard_args(LIBYAML-CPP DEFAULT_MSG LIBYAML-CPP_INCLUDE_DIR LIBYAML-CPP_LIBRARY)

if(LIBYAML-CPP_FOUND)
    set(LIBYAML-CPP_INCLUDE_DIRS ${LIBYAML-CPP_INCLUDE_DIR})
    set(LIBYAML-CPP_LIBRARIES ${LIBYAML-CPP_LIBRARY})
    message(STATUS "Found LIBYAML-CPP  (include: ${LIBYAML-CPP_INCLUDE_DIR}, library: ${LIBYAML-CPP_LIBRARY})")
    mark_as_advanced(LIBYAML-CPP_LIBRARY_DEBUG LIBYAML-CPP_LIBRARY_RELEASE
                     LIBYAML-CPP_LIBRARY LIBYAML-CPP_INCLUDE_DIR LIBYAML-CPP_ROOT_DIR)
endif()