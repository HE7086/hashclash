add_executable(sha1backward
    backward.cpp
    dostep.cpp
    main.cpp
    main.hpp
)

target_include_directories(sha1backward
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(sha1backward
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(sha1backward
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
install(TARGETS sha1backward DESTINATION "${CMAKE_INSTALL_BINDIR}")
