#include <iostream>
#include <cstdlib>
#include <string>

int main(int argc, char* argv[]) {
	
        std::cout << "Zhachenie: " << *(argv + 1) << std::endl;
	std::string name = std::getenv(*(argv + 1));
	std::cout << name << std::endl;

	return 0;
}
