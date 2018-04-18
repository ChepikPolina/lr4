/*!
	\brief Program that find your NAME.

	This program displays the value of the environment variable NAME if it exist
*/
#include <iostream>
#include "demo.hpp"
/*!
	Function that takes your NAME
*/
const char* getenv_var( char* argv[]) {
	return std::getenv(*(argv + 1));
}

/*!
	Print function, that displayes your NAME
*/
void printenv_var(char* argv[]) {
	std::string val = std::getenv(*(argv + 1));
	std::cout << "Value of "<< *(argv + 1) << " is: " << val << std::endl;
	
}

	