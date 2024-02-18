#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

#include <limits.h>

extern "C" {
unsigned long long myatoull(const char *s);
}

TEST_CASE("erroneous string") { CHECK(myatoull("") == 0); }

TEST_CASE("convert string with positive numbers") {
    CHECK(myatoull("0") == 0);
    CHECK(myatoull("10") == 10);


    CHECK(myatoull("18446744073709551615") == ULLONG_MAX);
}
