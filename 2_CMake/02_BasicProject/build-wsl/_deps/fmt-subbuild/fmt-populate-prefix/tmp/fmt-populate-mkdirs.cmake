# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/mnt/d/Code/C++ Projects/Udemy Lectures/UdemyCmake/2_CMake/02_BasicProject/build-wsl/_deps/fmt-src")
  file(MAKE_DIRECTORY "/mnt/d/Code/C++ Projects/Udemy Lectures/UdemyCmake/2_CMake/02_BasicProject/build-wsl/_deps/fmt-src")
endif()
file(MAKE_DIRECTORY
  "/mnt/d/Code/C++ Projects/Udemy Lectures/UdemyCmake/2_CMake/02_BasicProject/build-wsl/_deps/fmt-build"
  "/mnt/d/Code/C++ Projects/Udemy Lectures/UdemyCmake/2_CMake/02_BasicProject/build-wsl/_deps/fmt-subbuild/fmt-populate-prefix"
  "/mnt/d/Code/C++ Projects/Udemy Lectures/UdemyCmake/2_CMake/02_BasicProject/build-wsl/_deps/fmt-subbuild/fmt-populate-prefix/tmp"
  "/mnt/d/Code/C++ Projects/Udemy Lectures/UdemyCmake/2_CMake/02_BasicProject/build-wsl/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp"
  "/mnt/d/Code/C++ Projects/Udemy Lectures/UdemyCmake/2_CMake/02_BasicProject/build-wsl/_deps/fmt-subbuild/fmt-populate-prefix/src"
  "/mnt/d/Code/C++ Projects/Udemy Lectures/UdemyCmake/2_CMake/02_BasicProject/build-wsl/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/mnt/d/Code/C++ Projects/Udemy Lectures/UdemyCmake/2_CMake/02_BasicProject/build-wsl/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/mnt/d/Code/C++ Projects/Udemy Lectures/UdemyCmake/2_CMake/02_BasicProject/build-wsl/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
