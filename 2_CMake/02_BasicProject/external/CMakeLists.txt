set(LOG_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/log/src/logger.h")
set(LOG_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/log/src/logger.cpp")
set(LOG_INCLUDES "${CMAKE_CURRENT_SOURCE_DIR}/log/src/")

add_library(log STATIC ${LOG_SOURCES} ${LOG_HEADERS})
target_include_directories(log PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}
                           ${LOG_INCLUDES}
                           ${CMAKE_CURRENT_SOURCE_DIR}/log/src)
