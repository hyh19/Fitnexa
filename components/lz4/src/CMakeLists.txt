# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(lz4_library VERSION 0.0.1 LANGUAGES C)

add_library(lz4 SHARED
  "lz4.c"
)

set_target_properties(lz4 PROPERTIES
  PUBLIC_HEADER lz4.h
  OUTPUT_NAME "lz4"
)

target_compile_definitions(lz4 PUBLIC DART_SHARED_LIB)
