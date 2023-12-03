add_library(adder STATIC)

target_sources(adder
    PRIVATE
    ${CMAKE_SOURCE_DIR}/src/adder.c
)

target_include_directories(adder
    PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)
