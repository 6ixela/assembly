#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

#include <limits.h>

extern "C" {
int myadd(int a, int b);
}

TEST_CASE("add two numbers") {
    CHECK(myadd(0, 0) == 0);
    CHECK(myadd(0, 1) == 1);
    CHECK(myadd(42, 0) == 42);
    CHECK(myadd(100, -50) == 50);
    CHECK(myadd(0, -50) == -50);

    CHECK(myadd(INT_MAX, 1) == INT_MIN);

}
