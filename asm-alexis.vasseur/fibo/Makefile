override CPPFLAGS += -I ../includes
CXXFLAGS	= -O2
TARGET_ARCH	= -m64
COMPILE.s	+= --64
LDFLAGS		= -lstdc++ -lm -z noexecstack
fibo_tests: fibo_tests.o fibo.o

.PHONY:
check: fibo_tests
	timeout --preserve-status 2 ./$< -s

