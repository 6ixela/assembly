cpu_vendor_tests: cpu_vendor_tests.o cpu_vendor.o

.PHONY:
check: cpu_vendor_tests
	timeout --preserve-status 2 ./$< -s

override CPPFLAGS += -I ../includes
CXXFLAGS	= -O2
TARGET_ARCH	= -m64
COMPILE.s	+= --64
LDFLAGS		= -lstdc++ -lm -z noexecstack
