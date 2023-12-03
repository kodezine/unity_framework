cmake_minimum_required(VERSION 3.27)
include(FetchContent)
include(CMakePrintHelpers)

FetchContent_Declare(
    cmake_scripts                             # Recommendation: Stick close to the original name.
    GIT_REPOSITORY  git@github.com:kodezine/cmake_scripts.git
    GIT_TAG         HEAD
    SYSTEM
)

FetchContent_GetProperties(cmake_scripts)

if(NOT cmake_scripts_POPULATED)
    FetchContent_Populate(cmake_scripts)
endif()

project(unity_framework
    VERSION     0.0.1
    LANGUAGES   C CXX ASM
    DESCRIPTION "unity framework demo"
)

include(cmake/adder.cmake)

include(${cmake_scripts_SOURCE_DIR}/frameworks/unity/unity.cmake)
