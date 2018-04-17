#include <stdlib.h>
#include "catch.hpp"
#include "demo.hpp"

TEST_CASE("output should not be empty", "[file]") {
 setenv("NAME", "Kate", true);	
 std::string result = getenv_var();
 REQUIRE(result == "Kate");
}
