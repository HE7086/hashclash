add_executable(md5backward
    backward.cpp
    dostep.cpp
    main.cpp
    main.hpp
)

target_include_directories(md5backward
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(md5backward
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(md5backward
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
install(TARGETS md5backward DESTINATION "${CMAKE_INSTALL_BINDIR}")
