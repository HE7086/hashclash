add_executable(sha1helper
    convert.cpp
    filter.cpp
    main.cpp
    main.hpp
)

target_include_directories(sha1helper
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(sha1helper
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(sha1helper
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
install(TARGETS sha1helper DESTINATION "${CMAKE_INSTALL_BINDIR}")
