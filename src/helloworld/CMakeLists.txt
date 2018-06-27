cmake_minimum_required (VERSION 3.0)
include(../master.cmake)
include(${CMAKE_BINARY_DIR}/../libfoo/libfooTargets.cmake)

project(HelloWorld)
add_executable(HelloWorld
    main.cpp
    )

target_enable_pch(HelloWorld stdafx.h)

target_link_libraries(HelloWorld libfoo)

