CROSS_COMPILE ?= arm-none-eabi-
TARGET ?= arm

CINC:=include/ hal/include/ hal/$(TARGET_PLATFORM)/include ../F021/include

ASINC:=include/

CFLAGS:=-mbig-endian -Wall -Werror -mhard-float -march=armv7-r -mcpu=cortex-r4f \
	-fomit-frame-pointer -fno-strict-aliasing -finline -nostdlib -g -c
ASFLAGS:=-mbig-endian -mfpu=fpv4-sp-d16 -march=armv7-r -mcpu=cortex-r4f -g -c
LDFLAGS:=-nostdlib -EB --gc-section

comma=,
#LDFLAGS:=$(addprefix -Wl$(comma),$(LDFLAGS))

AS:=$(CROSS_COMPILE)as
CC:=$(CROSS_COMPILE)gcc
LD:=$(CROSS_COMPILE)ld
OBJCOPY:=$(CROSS_COMPILE)objcopy


LD_LIBRARIES:=c m gcc :F021_API_CortexR4_BE_V3D16_NDS.lib
LD_LIBRARIES:=$(addprefix -l, $(LD_LIBRARIES))
#/home/mgrumic/shared/MUTTERS-Bootloader/tms570LC4357ZWT/newlib/newlib-3.0.0/arm-none-eabi/hard/newlib/
LD_LIBRARY_PATH:=$(PWD)/newlib/newlib-3.0.0/arm-none-eabi/hard/newlib/libc /usr/lib/gcc/arm-none-eabi/6.3.1/ ../F021 \
				 $(PWD)/newlib/newlib-3.0.0/arm-none-eabi/hard/newlib/libm
LD_LIBRARY_PATH:=$(addprefix -L,$(LD_LIBRARY_PATH))

SRC_DIR:=src
HAL_SRC_DIR:=hal/src/$(TARGET_PLATFORM)
HAL_TARGET_SRC_DIR:=hal/$(TARGET_PLATFORM)/source
BUILD_DIR:=build


CSRC:=$(wildcard $(SRC_DIR)/*.c)
CSRC:=$(CSRC) $(wildcard $(HAL_SRC_DIR)/*.c)
CSRC:=$(CSRC) $(wildcard $(HAL_TARGET_SRC_DIR)/*.c)

ASMSRC:=$(wildcard $(HAL_TARGET_SRC_DIR)/*.s)

OBJS:=$(CSRC:.c=.o)
OBJS:=$(OBJS) $(ASMSRC:.s=.o)
OBJS:=$(subst $(HAL_SRC_DIR), build, $(OBJS))
OBJS:=$(subst $(HAL_TARGET_SRC_DIR), build, $(OBJS))
OBJS:=$(subst $(SRC_DIR), build, $(OBJS))

.PHONY: all prebuild fw

CINC:=$(addprefix -I, $(CINC))
ASINC:=$(addprefix -I, $(ASINC))

FW:=build/fw.bin
ELF:=build/fw.out

all: $(FW)

$(FW): $(ELF)
	$(OBJCOPY) -Obinary $(ELF) $(FW)

$(ELF): $(OBJS)
	$(LD) $(LDFLAGS) $(LD_LIBRARY_PATH) --start-group $(LD_LIBRARIES) --end-group -Tsrc/fw.ld -o $(ELF) $(OBJS) \
		/home/mgrumic/shared/MUTTERS-Bootloader/tms570LC4357ZWT/F021/objs/FlashStateMachine.InitializeFlashBanks.obj

prebuild:
	@echo "Buildnig FW..."
	$(VERBOSE)mkdir -p $(BUILD_DIR) 

$(OBJS): prebuild

$(BUILD_DIR)/%.o: $(HAL_TARGET_SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< $(CINC) -o $@

$(BUILD_DIR)/%.o: $(HAL_SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< $(CINC) -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< $(CINC) -o $@

$(BUILD_DIR)/%.o: $(HAL_TARGET_SRC_DIR)/%.s
	$(AS) $(ASFLAGS) $< $(ASINC) -o $@

