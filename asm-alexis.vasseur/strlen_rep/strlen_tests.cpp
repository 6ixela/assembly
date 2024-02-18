#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include <string>

extern "C" {
size_t my_strlen(const char *s);
}

TEST_CASE("Small strings") { CHECK(my_strlen("Hello World!") == 12); }
TEST_CASE("Empty string") { CHECK(my_strlen("") == 0); }

