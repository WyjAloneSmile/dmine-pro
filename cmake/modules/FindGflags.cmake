include(FindPackageHandleStandardArgs)

set(LIBGFLAGS_ROOT_DIR "" CACHE PATH "Folder contains LIBGFLAGS")

find_path(LIBGFLAGS_INCLUDE_DIR gflags PATHS ${LIBGFLAGS_ROOT_DIR})

find_library(LIBGFLAGS_LIBRARY gflags)

find_package_handle_standard_args(LIBGFLAGS DEFAULT_MSG LIBGFLAGS_INCLUDE_DIR LIBGFLAGS_LIBRARY)

if(LIBGFLAGS_FOUND)
    set(LIBGFLAGS_INCLUDE_DIRS ${LIBGFLAGS_INCLUDE_DIR})
    set(LIBGFLAGS_LIBRARIES ${LIBGFLAGS_LIBRARY})
    message(STATUS "Found LIBGFLAGS  (include: ${LIBGFLAGS_INCLUDE_DIR}, library: ${LIBGFLAGS_LIBRARY})")
    mark_as_advanced(LIBGFLAGS_LIBRARY_DEBUG LIBGFLAGS_LIBRARY_RELEASE
                     LIBGFLAGS_LIBRARY LIBGFLAGS_INCLUDE_DIR LIBGFLAGS_ROOT_DIR)
endif()