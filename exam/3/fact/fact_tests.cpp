#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

extern "C" {
unsigned int fact(unsigned int n);
}

TEST_CASE("testing the factorial function") {
  CHECK(fact(0) == 1);
  CHECK(fact(1) == 1);
  CHECK(fact(2) == 2);
  CHECK(fact(3) == 6);
  CHECK(fact(10) == 3628800);

}
