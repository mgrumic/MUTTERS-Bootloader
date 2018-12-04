CROSS_COMPILE ?= arm-none-eabi-
TARGET ?= arm

CINC:=include/
ASINC:=include/

CFLAGS:=-O3 -c -nostdlib
ASFLAGS:=-mfpu=vfpv3-d16
LDFLAGS:=

AS:=$(CROSS_COMPILE)as
CC:=$(CROSS_COMPILE)gcc
LD:=$(CROSS_COMPILE)gcc

SRC_DIR:=source
BUILD_DIR:=build


CSRC:=$(wildcard source/*.c)
CSRC+=$(wildcard mutters/src/*.c)
ASMSRC:=$(wildcard source/*.s)

OBJS:=$(CSRC:.c=.o)
OBJS+=$(ASMSRC:.s=.o)
OBJS:=$(subst source, build, $(OBJS))

$(info $(OBJS))

.PHONY: all prebuild

CINC:=$(addprefix -I, $(CINC))
ASINC:=$(addprefix -I, $(ASINC))

all: $(OBJS)
	$(LD) -Tsource/HL_sys_link.ld -o build/hal $(OBJS)
prebuild:
	$(VERBOSE)mkdir -p $(BUILD_DIR) 

$(OBJS): prebuild

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $(CINC) -o $@ $<

$(BUILD_DIR)/%.o: mutters/src/%.c
	$(CC) $(CFLAGS) $(CINC) -o $@ $<

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.s
	$(AS) $(ASFLAGS) $(ASINC) -o $@ $<

