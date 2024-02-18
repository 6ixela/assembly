memcmp_tests: memcmp_tests.o memcmp.o

.PHONY:
check: memcmp_tests
	./$<

override CPPFLAGS += -I ../includes
CXXFLAGS	= -O2
TARGET_ARCH	= -m64
COMPILE.s	+= --64
LDFLAGS		= -lstdc++ -lm -z noexecstack
