cmake_minimum_required(VERSION 3.20)
project(ACC)
INCLUDE_DIRECTORIES(src)
set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_C_STANDARD 11)
AUX_SOURCE_DIRECTORY(src DIR_SRCS)

add_executable(ACC ${DIR_SRCS})
