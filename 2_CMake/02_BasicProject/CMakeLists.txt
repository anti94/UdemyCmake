cmake_minimum_required(VERSION 3.22)

project(CppProjectTemplate VERSION 1.0.0 LANGUAGES C CXX)

set(PROJECT_AUTHOR "Caglayan GULUCAN")
set(EXECUTABLE_NAME Executable)
set(LIBRARY_NAME Library)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake") # cmake submodule path
include(AddGitSubmodule)
include(FetchContent)
include(Docs)

FetchContent_Declare(
    fmt
    GIT_REPOSITORY https://github.com/fmtlib/fmt.git
    GIT_TAG       "11.2.0"
    GIT_SHALLOW   TRUE
)

FetchContent_MakeAvailable(fmt)

FetchContent_Declare(
    spdlog
    GIT_REPOSITORY https://github.com/gabime/spdlog.git
    GIT_TAG       "v1.15.3"
    GIT_SHALLOW   TRUE
)

FetchContent_MakeAvailable(spdlog)

FetchContent_Declare(
    cxxopts
    GIT_REPOSITORY https://github.com/jarro2783/cxxopts
    GIT_TAG       "v3.1.1"
    GIT_SHALLOW   TRUE
)

FetchContent_MakeAvailable(cxxopts)

FetchContent_Declare(
    Catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG       "v3.8.1"
    GIT_SHALLOW   TRUE
)

FetchContent_MakeAvailable(Catch2)


Add_Git_Sub_Module(external/json)

option(COMPILE_EXECUTABLE "Build or not the executable" ON)
option(COMPILE_LIBRARY "Build or not the library" ON)

add_subdirectory(configured)
add_subdirectory(external)

if(COMPILE_LIBRARY)
    add_subdirectory(src)
else()
    message(STATUS "Skipping library build")
endif()

if(COMPILE_EXECUTABLE)
    add_subdirectory(app)
else()
    message(STATUS "Skipping executable build")
endif()
