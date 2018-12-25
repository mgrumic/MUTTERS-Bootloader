CROSS_COMPILE ?= arm-none-eabi-
TARGET ?= arm

CINC:=include/
ASINC:=include/

CFLAGS:=-mbig-endian -Wall -Werror -mhard-float -march=armv7-r -mcpu=cortex-r4f \
	-fomit-frame-pointer -fno-strict-aliasing -finline -nostdlib -O0 -g -c
ASFLAGS:=-mbig-endian -mfpu=fpv4-sp-d16 -march=armv7-r -mcpu=cortex-r4f -g -c
LDFLAGS:=-nostdlib -EB --gc-section

comma=,
#LDFLAGS:=$(addprefix -Wl$(comma),$(LDFLAGS))

AS:=$(CROSS_COMPILE)as
CC:=$(CROSS_COMPILE)gcc
LD:=$(CROSS_COMPILE)ld



LD_LIBRARIES:=c m gcc
LD_LIBRARIES:=$(addprefix -l, $(LD_LIBRARIES))

LD_LIBRARY_PATH:=/home/ioptest/diplomski/newlib-3.0.0/arm-none-eabi/newlib /usr/lib/gcc/arm-none-eabi/6.3.1/
LD_LIBRARY_PATH:=$(addprefix -L,$(LD_LIBRARY_PATH))

SRC_DIR:=source
BUILD_DIR:=build


CSRC:=$(wildcard source/*.c)
CSRC+=$(wildcard mutters/src/*.c)
ASMSRC:=$(wildcard source/*.s)

OBJS:=$(CSRC:.c=.o)
OBJS+=$(ASMSRC:.s=.o)
OBJS:=$(subst source, build, $(OBJS))
OBJS:=$(subst mutters/src, build, $(OBJS))

.PHONY: all prebuild fw

CINC:=$(addprefix -I, $(CINC))
ASINC:=$(addprefix -I, $(ASINC))

all: fw $(OBJS)
	$(LD) $(LDFLAGS) $(LD_LIBRARY_PATH) --start-group $(LD_LIBRARIES) --end-group -Tsource/HL_sys_link.ld -o build/hal.out $(OBJS)
prebuild:
	$(VERBOSE)mkdir -p $(BUILD_DIR) 

fw:
	$(MAKE) --directory fw

$(OBJS): prebuild

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< $(CINC) -o $@

$(BUILD_DIR)/%.o: mutters/src/%.c
	$(CC) $(CFLAGS) $< $(CINC) -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.s
	$(AS) $(ASFLAGS) $< $(ASINC) -o $@

