function(Add_Git_Sub_Module dir)
    find_package(Git REQUIRED)

    if(NOT EXISTS ${CMAKE_SOURCE_DIR}/${dir}/CMakeLists.txt)
        message(STATUS "Updating git submodule: ${dir}")
        execute_process(COMMAND ${GIT_EXECUTABLE}
                        submodule update --init --recursive ${CMAKE_SOURCE_DIR}/${dir}
                        WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
    endif()

    if(EXISTS ${CMAKE_SOURCE_DIR}/${dir}/CMakeLists.txt)
        add_subdirectory(${CMAKE_SOURCE_DIR}/${dir})
    endif()

endfunction(Add_Git_Sub_Module)
