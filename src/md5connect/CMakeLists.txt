add_executable(md5connect
    connect.cpp
    dostep.cpp
    main.cpp
    main.hpp
)

target_include_directories(md5connect
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(md5connect
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(md5connect
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
install(TARGETS md5connect DESTINATION "${CMAKE_INSTALL_BINDIR}")
