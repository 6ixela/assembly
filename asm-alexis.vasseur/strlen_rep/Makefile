override CPPFLAGS += -I ../includes
CXXFLAGS	= -O2
TARGET_ARCH	= -m64
COMPILE.s	+= --64
LDFLAGS		= -lstdc++ -lm -z noexecstack
strlen_tests: strlen_tests.o strlen.o

.PHONY:
check: strlen_tests
	timeout --preserve-status 2 ./$< -s

