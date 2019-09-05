TARGET_PLATFORM ?= tms570

COMPILER_DIR := /opt/ti/arm

CINC := include/ $(COMPILER_DIR)/include mutters/include F021/include

ASINC := include/

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
		  -g \
		  --issue_remarks \
		  --display_error_number \
		  --quiet \
		  --symdebug:dwarf \
		  --obj_directory=build \
		  -ppc \
		  -ppa


ASFLAGS := --quiet \
		  --abi=eabi \
 		  -mv7r4 \
 		  --float_support=VFPv3D16 \
 		  --symdebug:dwarf \
 		  --obj_directory=build

LDFLAGS:=--reread_libs --rom_model --warn_sections --be32 --mapfile_contents=all -stack=0x2F800 -heap=0x2F800

AS:=armcl
CC:=armcl
LD:=armlnk

LD_LIBRARIES := rtsv7R4_T_be_v3D16_eabi.lib F021_API_CortexR4_BE_L2FMC.lib
LD_LIBRARIES := $(addprefix -l, $(LD_LIBRARIES))

LD_LIBRARY_PATH := /opt/ti/arm/lib F021/
LD_LIBRARY_PATH := $(addprefix -i,$(LD_LIBRARY_PATH))

SRC_DIR:=source
BUILD_DIR:=build


CSRC:=$(wildcard source/*.c)
CSRC+=$(wildcard mutters/src/*.c)
ASMSRC:=$(wildcard source/*.asm)

OBJS:=$(CSRC:.c=.obj)
OBJS+=$(ASMSRC:.asm=.obj)
OBJS:=$(subst source, build, $(OBJS))
OBJS:=$(subst mutters/src, build, $(OBJS))

.PHONY: all prebuild fw clean


CINC:=$(addprefix -I, $(CINC))
ASINC:=$(addprefix -I, $(ASINC))

all: $(OBJS)
	$(LD) $(LDFLAGS) --map_file=$(BUILD_DIR)/hal.map -lsource/HL_sys_link.cmd -o build/hal.out $(OBJS) $(LD_LIBRARY_PATH) $(LD_LIBRARIES)

prebuild:
	$(VERBOSE)mkdir -p $(BUILD_DIR) 

fw:
	$(MAKE) --directory fw TARGET_PLATFORM=$(TARGET_PLATFORM)

$(OBJS): prebuild

$(BUILD_DIR)/%.obj: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< $(CINC)

$(BUILD_DIR)/%.obj: mutters/src/%.c
	$(CC) $(CFLAGS) $< $(CINC)

$(BUILD_DIR)/%.obj: $(SRC_DIR)/%.asm
	$(AS) $(ASFLAGS) $< $(ASINC)

clean:
	rm -rf build/*
	rm -rf fw/build/*
