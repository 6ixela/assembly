
OBJS = get_frame_tests.o \
       get_frame.o \

CXXFLAGS = -g3 -m64 -fno-omit-frame-pointer -O0 -Wno-cpp
CFLAGS = -g3 -m64 -fno-omit-frame-pointer -O0 -Wno-cpp

get_frame_tests: ${OBJS}

.PHONY:
check: get_frame_tests
	timeout --preserve-status 2 ./$< -s
override CPPFLAGS += -I ../includes
CXXFLAGS	= -O2
TARGET_ARCH	= -m64
COMPILE.s	+= --64
LDFLAGS		= -lstdc++ -lm -z noexecstack
