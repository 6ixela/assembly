strcpy_tests: strcpy_tests.o strcpy.o

.PHONY:
check: strcpy_tests
	./$<

override CPPFLAGS += -I ../includes
CXXFLAGS	= -O2
TARGET_ARCH	= -m64
COMPILE.s	+= --64
LDFLAGS		= -lstdc++ -lm -z noexecstack
