#pragma once

#include <cstdint>
#include <string>

#define NAME    "CppProjectTemplate"
#define VERSION "1.0.0"
#define AUTHOR  "Caglayan GULUCAN"

namespace Config
{
    // Configuration for the application
    struct Config {
        std::string appName;          // Name of the application
        std::string version;          // Version of the application
        std::string author;           // Author of the application

        Config()
        {
            appName = NAME;
            version = VERSION;
            author  = AUTHOR;
        }
    };

}; // namespace Config
