add_executable(sha1forward
    forward.cpp
    dostep.cpp
    main.cpp
    main.hpp
)

target_include_directories(sha1forward
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(sha1forward
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(sha1forward
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
install(TARGETS sha1forward DESTINATION "${CMAKE_INSTALL_BINDIR}")
