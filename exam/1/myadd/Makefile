myadd_tests: myadd_tests.o myadd.o

.PHONY:
check: myadd_tests
	timeout --preserve-status 2 ./$< -s

override CPPFLAGS += -I ../includes
CXXFLAGS	= -O2
TARGET_ARCH	= -m64
COMPILE.s	+= --64
LDFLAGS		= -lstdc++ -lm -z noexecstack
