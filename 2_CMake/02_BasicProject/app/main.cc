#include <iostream>

#include "my_lib.h"
#include "config.hpp"
#include "nlohmann/json.hpp"

int main()
{
    // print_hello_world();

    Config::Config config;
    std::cout << "Application Name: " << config.appName << std::endl;
    std::cout << "Version: " << config.version << std::endl;
    std::cout << "Author: " << config.author << std::endl;

    std::cout << "Using nlohmann::json library MAJOR version: "
              << NLOHMANN_JSON_VERSION_MAJOR << std::endl;

    std::cout << "Using nlohmann::json library MINOR version: "
              << NLOHMANN_JSON_VERSION_MINOR << std::endl;

    std::cout << "Using nlohmann::json library PATCH version: "
              << NLOHMANN_JSON_VERSION_PATCH << std::endl;

    return 0;
}
