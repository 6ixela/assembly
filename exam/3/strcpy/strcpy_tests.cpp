#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include <string>

extern "C" {
char *strcpy(char *dest, const char *source);
}

TEST_CASE("Small string copy") {
  char dst_str1[32];

  CHECK(strcpy(dst_str1, "Hello World!") == (char *)dst_str1);
  CHECK(std::string{dst_str1} == "Hello World!");
}

