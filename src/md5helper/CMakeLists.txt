add_executable(md5helper
    collisionfinding.cpp
    convert.cpp
    main.cpp
    main.hpp
    startnearcollision.cpp
)

target_include_directories(md5helper
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(md5helper
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(md5helper
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
install(TARGETS md5helper DESTINATION "${CMAKE_INSTALL_BINDIR}")
