add_executable(sha1connect
    connect.cpp
    dostep.cpp
    main.cpp
    main.hpp
)

target_include_directories(sha1connect
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(sha1connect
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(sha1connect
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
install(TARGETS sha1connect DESTINATION "${CMAKE_INSTALL_BINDIR}")
