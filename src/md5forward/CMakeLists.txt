add_executable(md5forward
    forward.cpp
    dostep.cpp
    main.cpp
    main.hpp
)

target_include_directories(md5forward
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(md5forward
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(md5forward
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
install(TARGETS md5forward DESTINATION "${CMAKE_INSTALL_BINDIR}")
