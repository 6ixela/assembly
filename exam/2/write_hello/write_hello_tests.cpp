#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include <fstream>
#include <string>

extern "C" {
void write_hello_world(void);
}

TEST_CASE("Check hello world") {
  write_hello_world();

  std::ifstream f;
  f.open("hello");

  REQUIRE(f.is_open());

  // Check the file size
  f.seekg(0, std::ios_base::end);
  CHECK(f.tellg() == 12);

  // Reset the cursor
  f.seekg(0);

  std::string content;
  std::getline(f, content);
  CHECK(content == "Hello World!");
}
