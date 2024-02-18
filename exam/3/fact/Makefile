fact_tests: fact_tests.o fact.o

.PHONY:
check: fact_tests
	./$<

override CPPFLAGS += -I ../includes
CXXFLAGS	= -O2
TARGET_ARCH	= -m64
COMPILE.s	+= --64
LDFLAGS		= -lstdc++ -lm -z noexecstack
