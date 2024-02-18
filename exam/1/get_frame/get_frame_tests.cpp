#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

extern "C" {
void *get_frame(unsigned int n);

/* We use these to keep the intermediary results. */
static char *s_ptr_baz = NULL;
static char *s_ptr_bar = NULL;
static char *s_ptr_foo = NULL;

void baz(void) {
    /* volatile: prevent the compiler optimizing the value. */
    volatile const char *s = "baz";

    /* Fetch function frame and access the pointer value. */
    s_ptr_baz = *((char **)get_frame(0) - 1);
    s_ptr_bar = *((char **)get_frame(1) - 1);
    s_ptr_foo = *((char **)get_frame(2) - 1);
}

void bar(void) {
    volatile const char *s = "bar";
    baz();
}

void foo(void) {
    volatile const char *s = "foo";
    bar();
}
}

TEST_CASE("foo bar baz create stack frames") {
    foo();

    CHECK(std::string(s_ptr_baz) == "baz");
    CHECK(s_ptr_baz == (char *)"baz");
    CHECK(std::string(s_ptr_bar) == "bar");
    CHECK(s_ptr_bar == (char *)"bar");
    CHECK(std::string(s_ptr_foo) == "foo");
    CHECK(s_ptr_foo == (char *)"foo");
}
