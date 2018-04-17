#include <stdlib.h>
#include "catch.hpp"
#include "demo.hpp"

const char* getenv_var() {
	return std::getenv("NAME");
}

TEST_CASE("output should be empty", "[file]") {
 std::string result = getenv_var();
 REQUIRE(result == " ");
}

