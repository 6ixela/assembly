myatoull_tests: myatoull_tests.o myatoull.o

.PHONY:
check: myatoull_tests
	timeout --preserve-status 2 ./$< -s

override CPPFLAGS += -I ../includes
CXXFLAGS	= -O2
TARGET_ARCH	= -m64
COMPILE.s	+= --64
LDFLAGS		= -lstdc++ -lm -z noexecstack
