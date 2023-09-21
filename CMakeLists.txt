cmake_minimum_required(VERSION 3.18)

project("stb-playground")

SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")

find_package(stb COMPONENTS stb_image) # PATHS "P:\\Downloads\\cpp-libraries\\portaudio\\build\\cmake\\portaudio")

if(stb_FOUND)
    if(NOT stb_FIND_COMPONENTS)
        message(STATUS "find_package(stb) called with no component")
    endif()
    
    message(STATUS "YES ${stb_FIND_COMPONENTS}!" )

    # foreach(component ${stb_FIND_COMPONENTS})
    #     message(STATUS "**${component}" )
    #     string(TOUPPER "${component}" UPPER_COMPONENT)
    #     set(stb_${UPPER_COMPONENT}_FOUND FALSE)
    #     if(TARGET SFML::${component})
    #         set(stb_${UPPER_COMPONENT}_FOUND TRUE)
    #     elseif(stb_FIND_REQUIRED_${component})
    #         set(FIND_stb_ERROR "Found SFML but requested component '${component}' is missing in the config defined in ${stb_DIR}.")
    #         set(stb_FOUND FALSE)
    #     endif()
    # endforeach()

else()
    message(STATUS "NO")
endif()

get_cmake_property(_variableNames VARIABLES)
list (SORT _variableNames)
foreach (_variableName ${_variableNames})
    message(STATUS "${_variableName}=${${_variableName}}")
endforeach()

# target_include_directories(path/to/header-only-library)

# include_directories()
add_executable(${PROJECT_NAME}
    "src/main.cpp"
)

target_link_libraries(${PROJECT_NAME} PRIVATE stb)