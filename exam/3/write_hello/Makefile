write_hello_tests: write_hello_tests.o write_hello.o

.PHONY:
check: write_hello_tests
	./$<

.PHONY:
clean::
	${RM} hello

override CPPFLAGS += -I ../includes
CXXFLAGS	= -O2
TARGET_ARCH	= -m64
COMPILE.s	+= --64
LDFLAGS		= -lstdc++ -lm -z noexecstack
