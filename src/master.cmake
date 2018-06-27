add_definitions(/std:c++latest)
add_definitions(-DUNICODE -D_UNICODE)

if ("${CMAKE_SYSTEM_VERSION}" MATCHES "6.1")
  add_compile_options(-DBUILDFORWIN7)
endif()

# Enable parallel builds
if(MSVC)
  if(NOT "${CMAKE_GENERATOR}" MATCHES "Win64")
    add_compile_options(/Gz)
  endif()

  set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /MP")
  set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP")
endif(MSVC)

include_directories(${PROJECT_ROOT}/src)
include(${PROJECT_ROOT}/build/saintonge.cmake)
