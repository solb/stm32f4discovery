CROSS := arm-none-eabi-

AS    := $(CROSS)as
CC    := $(CROSS)gcc
CXX   := $(CROSS)c++

-include config.mk

override ASFLAGS  := $(ASFLAGS)
override CFLAGS   := -std=c99 -O2 -Wall -Wextra -Wpedantic -Werror $(CFLAGS)
override CPPFLAGS := -DNDEBUG $(CPPFLAGS)
override CXXFLAGS := -std=c++11 -O2 -Wall -Wextra -Wpedantic -Werror $(CXXFLAGS)
override LDFLAGS  := -Tldscripts/STM32F40xxG.ld -specs=rdimon.specs -D__NO_SYSTEM_INIT -Wno-comment $(LDFLAGS)
override LDLIBS   := startup/startup_ARMCM4.S $(LDLIBS)
