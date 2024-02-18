#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include <string>

extern "C" {
void get_cpu_vendor_id(char id[]);
}

TEST_CASE("check vendor ID") {
    char id[13] = {0};
    get_cpu_vendor_id(id);
    id[12] = 0;

    /* FIXME */
    CHECK(std::string(id, 12) == "UseCPUIDinst");
}
