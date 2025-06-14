find_package(Doxygen REQUIRED) #doxygen küçük yazılamaz!!!!

if(DOXYGEN_FOUND)
    message(STATUS "Doxygen found: ${DOXYGEN_EXECUTABLE}")
    add_custom_target(
        docs #ALL parametresi eklenirse --build ile docs targetı da çalıştırılır. Yoksa sadece execeutalbe ve library targetları çalıştırılır.
        ${DOXYGEN_EXECUTABLE}
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/docs
    )
else()
    message(WARNING "Doxygen not found, documentation will not be generated.")
endif()
