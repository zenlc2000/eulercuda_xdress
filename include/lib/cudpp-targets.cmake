# Generated by CMake 3.3.2

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget cudpp cudpp_hash)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target cudpp
add_library(cudpp STATIC IMPORTED)

# Create imported target cudpp_hash
add_library(cudpp_hash STATIC IMPORTED)

# Import target "cudpp" for configuration "Debug"
set_property(TARGET cudpp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(cudpp PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "/Developer/NVIDIA/CUDA-7.5/lib/libcudart_static.a;-Wl,-rpath,/usr/local/cuda/lib"
  IMPORTED_LOCATION_DEBUG "/Users/zen/Dropbox/DCS/Experiment/eulercuda_cython/include/lib/libcudpp64d.a"
  )

# Import target "cudpp_hash" for configuration "Debug"
set_property(TARGET cudpp_hash APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(cudpp_hash PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "/Developer/NVIDIA/CUDA-7.5/lib/libcudart_static.a;-Wl,-rpath,/usr/local/cuda/lib;cudpp"
  IMPORTED_LOCATION_DEBUG "/Users/zen/Dropbox/DCS/Experiment/eulercuda_cython/include/lib/libcudpp_hash64d.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
