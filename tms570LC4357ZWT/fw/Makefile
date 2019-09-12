TARGET_PLATFORM ?= tms570

COMPILER_DIR := /opt/ti/arm

CINC:=include/ hal/include/ hal/$(TARGET_PLATFORM)/include ../F021/include $(COMPILER_DIR)/include

ASINC:=include/

CFLAGS := --abi=eabi \
		  --auto_inline=0 \
		  --endian=big \
		  -mv7r4 \
		  --float_support=VFPv3D16 \
		  --wchar_t=16 \
		  --plain_char=unsigned \
		  --small_enum \
		  --fp_mode=strict \
		  --check_misra=none \
		  --opt_level=0 \
		  --opt_for_speed=0 \
		  --code_state=32 \
		  --disable_inlining \
		  --gcc \
		  --issue_remarks \
		  --display_error_number \
		  --quiet \
		  --obj_directory=build \
		  #-g \
		  --symdebug:dwarf

ASFLAGS:=--quiet \
   	     --abi=eabi \
		 -mv7r4 \
		 --float_support=VFPv3D16 \
		 --symdebug:dwarf \
		 --obj_directory=build

LDFLAGS:=--reread_libs --rom_model --warn_sections --be32 --mapfile_contents=all -stack=0x2F800 -heap=0x2F800

AS:=armcl
CC:=armcl
LD:=armlnk
HOST_CC:=gcc

HEX_TOOL := armhex
HEX2BIN := $(PWD)/hex2bin


LD_LIBRARIES:=rtsv7R4_T_be_v3D16_eabi.lib
LD_LIBRARIES:=$(addprefix -l, $(LD_LIBRARIES))
LD_LIBRARY_PATH:=/opt/ti/arm/lib


LD_LIBRARY_PATH:=$(addprefix -i,$(LD_LIBRARY_PATH))

SRC_DIR:=src
HAL_SRC_DIR:=hal/src/$(TARGET_PLATFORM)
HAL_TARGET_SRC_DIR:=hal/$(TARGET_PLATFORM)/source
BUILD_DIR:=build


CSRC:=$(wildcard $(SRC_DIR)/*.c)
CSRC:=$(CSRC) $(wildcard $(HAL_SRC_DIR)/*.c)
CSRC:=$(CSRC) $(wildcard $(HAL_TARGET_SRC_DIR)/*.c)

ASMSRC:=$(wildcard $(HAL_TARGET_SRC_DIR)/*.asm)

OBJS:=$(CSRC:.c=.obj)
OBJS:=$(OBJS) $(ASMSRC:.asm=.obj)
OBJS:=$(subst $(HAL_SRC_DIR), build, $(OBJS))
OBJS:=$(subst $(HAL_TARGET_SRC_DIR), build, $(OBJS))
OBJS:=$(subst $(SRC_DIR), build, $(OBJS))

.PHONY: all prebuild fw

CINC:=$(addprefix -I, $(CINC))
ASINC:=$(addprefix -I, $(ASINC))

PACK_DELIVERY := tools/pack_delivery

FW:=build/fw.bin
FW_HEX:=build/fw.b0
ELF:=build/fw.out

all: $(FW)

$(PACK_DELIVERY): tools/pack_delivery.c
	$(HOST_CC) -o $@ $<
	

$(FW): $(ELF) $(PACK_DELIVERY)
	$(HEX_TOOL) $(PWD)/fw/F021.cmd
	$(HEX2BIN) $(FW_HEX)
	$(PACK_DELIVERY) $(FW) $(FW).delivery



$(ELF): $(OBJS)
	$(LD) $(LDFLAGS) $(LD_LIBRARY_PATH) $(LD_LIBRARIES) -lsrc/fw.ld -o $(ELF) $(OBJS) \
		--map_file=$(PWD)/fw/build/fw.map

prebuild:
	@echo "Buildnig FW..."
	$(VERBOSE)mkdir -p $(BUILD_DIR) 

$(OBJS): prebuild

$(BUILD_DIR)/%.obj: $(HAL_TARGET_SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< $(CINC)

$(BUILD_DIR)/%.obj: $(HAL_SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< $(CINC)

$(BUILD_DIR)/%.obj: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< $(CINC)

$(BUILD_DIR)/%.obj: $(HAL_TARGET_SRC_DIR)/%.asm
	$(AS) $(ASFLAGS) $< $(ASINC)

