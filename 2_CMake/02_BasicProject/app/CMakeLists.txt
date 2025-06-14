set(EXECUTABLE_SOURCES
    main.cc
)
add_executable(${EXECUTABLE_NAME} ${EXECUTABLE_SOURCES})
target_link_libraries(${EXECUTABLE_NAME}
    ${LIBRARY_NAME}
    ) #nlohmann_json Kütüphane ismi bu, json.hpp dosyası bu isimle bulunuyor
