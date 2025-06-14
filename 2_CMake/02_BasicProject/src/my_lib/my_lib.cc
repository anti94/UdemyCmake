#include <iostream>

#include "my_lib.h"

/**
 * @brief Prints "Hello World!" to the standard output.
 * This function serves as a simple demonstration of outputting text in C++.
 * It can be used to verify that the library is functioning correctly.
 * * @note This function does not take any parameters and does not return any value.
 * * @example
 * * print_hello_world();
 * * This will output:
 * * Hello World!
 * * @see my_lib.h for the function declaration.
 * * @since 1.0.0
 * * @version 1.0.0
 * * @author Caglayan Gulucan
 * * @date 2025-06-12
 * * @details
 * This function is part of the my_lib library, which provides basic utility functions.
 * It is designed to be simple and easy to use, making it suitable for beginners
 * and as a starting point for more complex applications.
 * * The function does not perform any error handling or complex operations,
 * making it lightweight and efficient.
 * * It is intended for educational purposes and to demonstrate basic C++ syntax
 * and functionality.
 * * The function can be called from any part of the program where the my_lib.h header
 * is included, allowing for easy integration into larger projects.
 * * This function is a good example of how to create and use functions in C++,
 * and it can be extended or modified for more complex tasks in the future.
 *
 * @return void
 * @note This function does not return any value.
 * @warning This function does not handle any exceptions or errors.
 * @todo Consider adding more functionality or parameters in the future.
 * @bug No known bugs at the moment.
 * @see https://en.cppreference.com/w/cpp/language/functions for more information on C++ functions.
 * @since 1.0.0
 * @version 1.0.0
 * @author Caglayan Gulucan
 * @date 2025-06-12
 * @details
 * This function is part of the my_lib library, which provides basic utility functions.
 * It is designed to be simple and easy to use, making it suitable for beginners
 * and as a starting point for more complex applications.
 * The function does not perform any error handling or complex operations,
 * making it lightweight and efficient.
 * It is intended for educational purposes and to demonstrate basic C++ syntax
 * and functionality.
 * The function can be called from any part of the program where the my_lib.h header
 * is included, allowing for easy integration into larger projects.
 * This function is a good example of how to create and use functions in C++,
 * and it can be extended or modified for more complex tasks in the future.
 *
 *
 *
 *
 */
void print_hello_world()
{
    std::cout << "Hello World!\n";
}

/**
 * @brief Toplam hesaplayan fonksiyon
 * @param a İlk sayı
 * @param b İkinci sayı
 * @return a + b
 */
int DoxygenTestFunction(int a, int b)
{
    return a + b;
}
