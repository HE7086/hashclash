set(md5birthdaysearch_SOURCES
    birthday.cpp
    dostep.cpp
    main.hpp
    storage.cpp
    birthday_types.hpp
    cuda_cyclicbuffer.hpp
    distribution.hpp
    main.cpp
    simd_avx256.cpp
    storage.hpp
)

if(CUDAToolkit_FOUND)
    set(md5birthdaysearch_SOURCES ${md5birthdaysearch_SOURCES} cuda_md5.cu)
endif()

add_executable(md5birthdaysearch ${md5birthdaysearch_SOURCES})

target_include_directories(md5birthdaysearch
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(md5birthdaysearch
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(md5birthdaysearch
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
install(TARGETS md5birthdaysearch DESTINATION "${CMAKE_INSTALL_BINDIR}")
