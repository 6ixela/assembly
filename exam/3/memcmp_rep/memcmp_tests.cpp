#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include <string>

extern "C" {
int my_memcmp(const void *s1, const void *s2, size_t n);
}

TEST_CASE("Compare strings") {
    CHECK(my_memcmp("Hello World!", "Hello World!", 12) == 0);
    CHECK(my_memcmp("Hello World!", "No match", 5) < 0);

    /* TODO: Add other test cases... */
}
