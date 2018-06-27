cmake_minimum_required(VERSION 3.0)
include(../master.cmake)

project(libfoo)

add_library(libfoo
    foo.cpp
    )

target_include_directories(libfoo PUBLIC .)

export(
    TARGETS
        libfoo
    FILE "${PROJECT_BINARY_DIR}/libfooTargets.cmake"
    )

