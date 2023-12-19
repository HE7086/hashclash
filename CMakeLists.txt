cmake_minimum_required(VERSION 3.20)
project(hashclash)

# Common Options
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
# list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

# save the executables/libraries according to GNU standard
include(GNUInstallDirs)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})

# enable warnings by default for all targets
# add_compile_options(-Wall -Wextra -Wpedantic -Werror)
add_compile_options(-Wno-deprecated-declarations)

# enable sanitizers for debug build
# add_compile_options("$<$<CONFIG:DEBUG>:-fsanitize=address;-fsanitize=undefined;-fno-omit-frame-pointer>")

# enable lto for release build
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELEASE true)

# -fPIC
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# use pthread
find_package(Threads REQUIRED)
set(THREADS_PREFER_PTHREAD_FLAG ON)

find_package(ZLIB REQUIRED)
find_package(BZip2 REQUIRED)
find_package(Boost REQUIRED
    COMPONENTS
        filesystem
        iostreams
        program_options
        serialization
        system
        thread
)

add_subdirectory(src)
add_subdirectory(lib)
