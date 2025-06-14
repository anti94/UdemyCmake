set(LIBRARY_SOURCES
    my_lib.cc
)
set(LIBRARY_HEADERS
    my_lib.h
)
set(LIBRARY_INCLUDES
    ${CMAKE_CURRENT_SOURCE_DIR}
    "${CMAKE_BINARY_DIR}/configured_files/include"
) # my_lib.h dosyası için include dizinini ekle


add_library(${LIBRARY_NAME} STATIC
    ${LIBRARY_SOURCES}
    ${LIBRARY_HEADERS}
)

target_include_directories(${LIBRARY_NAME} PUBLIC
    ${LIBRARY_INCLUDES}
)

target_link_libraries(${LIBRARY_NAME} PUBLIC
    fmt::fmt # Project Name::TargetName
    nlohmann_json::nlohmann_json # JSON library
    spdlog::spdlog # Logging library
    cxxopts::cxxopts # Command line options library
)

message(STATUS "CMAKE_BINARY_DIR: ${CMAKE_BINARY_DIR}")
