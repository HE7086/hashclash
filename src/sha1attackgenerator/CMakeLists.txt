add_executable(sha1attackgenerator
    checkokpaths.cpp
    collisionfinding.cpp
    filters.cpp
    main.cpp
    main.hpp
    program_generator.cpp
    tunnel_analysis.cpp
)
target_include_directories(sha1attackgenerator
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(sha1attackgenerator
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(sha1attackgenerator
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
install(TARGETS sha1attackgenerator DESTINATION "${CMAKE_INSTALL_BINDIR}")

add_executable(sha1nearcollisionattack
    collfind.cpp
)
target_include_directories(sha1nearcollisionattack
    SYSTEM
    PUBLIC
    ${CMAKE_SOURCE_DIR}/lib
)
target_include_directories(sha1nearcollisionattack
    PUBLIC
    ${Boost_INCLUDE_DIRS}
)
target_link_libraries(sha1nearcollisionattack
    PUBLIC
    ${Boost_LIBRARIES}
    ZLIB::ZLIB
    BZip2::BZip2
    hashclash
)
target_compile_options(sha1nearcollisionattack PRIVATE -Wno-shift-overflow)
install(TARGETS sha1nearcollisionattack DESTINATION "${CMAKE_INSTALL_BINDIR}")
