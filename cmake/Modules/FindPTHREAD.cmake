
TRY_COMPILE(KOKKOS_HAS_PTHREAD_ARG
  ${KOKKOS_TOP_BUILD_DIR}/tpl_tests
  ${KOKKOS_SOURCE_DIR}/cmake/compile_tests/pthread.cpp
  LINK_LIBRARIES -pthread
  COMPILE_DEFINITIONS -pthread)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PTHREAD DEFAULT_MSG KOKKOS_HAS_PTHREAD_ARG)

KOKKOS_CREATE_IMPORTED_TPL(Kokkos::PTHREAD
  INTERFACE   #this is not a real library with a real location
  COMPILE_OPTIONS -pthread
  LINK_OPTIONS    -pthread)



