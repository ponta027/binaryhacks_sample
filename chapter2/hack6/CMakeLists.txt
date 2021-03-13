project(sample)

set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_TEENY 1)
set(PACKAGE_VERSION "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_TEENY}")
set(CMAKE_C_FLAGS "-g")

cmake_minimum_required(VERSION 2.8)

add_library( sample STATIC  src/bar.c )
add_library( sample_so SHARED src/foo.c  )

add_executable( main main.c )

target_link_libraries( main sample sample_so) 

