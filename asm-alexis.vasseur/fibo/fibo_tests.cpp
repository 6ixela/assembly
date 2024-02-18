#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

extern "C" {
unsigned int fibo(unsigned int n);
}

TEST_CASE("testing the fibonacci function") {
  CHECK(fibo(0) == 0);
  CHECK(fibo(1) == 1);
  CHECK(fibo(2) == 1);
  CHECK(fibo(3) == 2);
  CHECK(fibo(17) == 1597);
  CHECK(fibo(29) == 514229);

}
