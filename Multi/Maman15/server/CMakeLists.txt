cmake_minimum_required(VERSION 3.28)
project(server)

set(CMAKE_CXX_STANDARD 20)

add_executable(main main.cpp
        server.cpp
        utils/fs.cpp
        models/request.cpp
        models/response.cpp
        utils/random.cpp
        utils/random.h
        utils/strings.cpp
        utils/strings.h
)


# Find the nlohmann_json package
find_package(nlohmann_json REQUIRED)

# Link against the Winsock library if on Windows
if (WIN32)
    target_link_libraries(main ws2_32 nlohmann_json::nlohmann_json)
endif ()



