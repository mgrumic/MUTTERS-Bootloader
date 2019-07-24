#CROSS_COMPILE ?= arm-none-eabi-
TARGET ?= arm

CINC:=include/
TI_INC:=C:\TI-5.1.6\include
ASINC:=include/
CRYPTO_INC:=libraries/include/

CDEFINES:=-DTARGET_TMS

CFLAGS:=-mv7r4 \
	 --abi=eabi \
	 --auto_inline=0 \
	 --endian=big \
	 --float_support=VFPv3D16 \
	 --plain_char=unsigned \
	 --small_enum \
	 --fp_mode=strict \
	 --check_misra=none \
	 --opt_level=0 \
	 --opt_for_speed=0 \
	 --code_state=32 \
	 --no_inlining \
	 --gcc \
	 -g \
	 --issue_remarks \
	 --display_error_number \
	 --quiet \
	 --symdebug:dwarf \
	 --symdebug:dwarf_version=2 \
	 --obj_directory=build

ASFLAGS:=--quiet \
		--abi=eabi \
		-mv7r4 \
		--float_support=VFPv3D16 \
		--symdebug:dwarf \
		--obj_directory=build

LDFLAGS:= --reread_libs --rom_model --warn_sections --be32 --mapfile_contents=all -stack=0x2F800 -heap=0x2F800

comma=,
#LDFLAGS:=$(addprefix -Wl$(comma),$(LDFLAGS))

AS:=armcl
CC:=armcl
LD:=armlnk

LD_LIBRARIES:=rtsv7R4_A_be_v3D16_eabi.lib libc.a libtt_crypto_core_tms570.lib
LD_LIBRARIES:=$(addprefix -l, $(LD_LIBRARIES))

LD_LIBRARY_PATH:=C:/TI-5.1.6/lib ./libraries/libs
LD_LIBRARY_PATH:=$(addprefix -i,$(LD_LIBRARY_PATH))

SRC_DIR:=source
BUILD_DIR:=build

CSRC:=$(wildcard source/*.c)
ASMSRC:=$(wildcard source/*.asm)

OBJS:=$(CSRC:.c=.obj)
OBJS+=$(ASMSRC:.asm=.obj)
OBJS:=$(subst source, build, $(OBJS))

.PHONY: all prebuild clean

CINC:=$(addprefix -I, $(CINC))
ASINC:=$(addprefix -I, $(ASINC))
CRYPTO_INC:=$(addprefix -I, $(CRYPTO_INC))

all: $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) $(LD_LIBRARY_PATH) $(LD_LIBRARIES) -lsource/HL_sys_link.cmd -o build/hal.out

prebuild:
	$(VERBOSE)cp include/* libraries/include

#	$(VERBOSE)mkdir $(BUILD_DIR)

$(OBJS): prebuild

$(BUILD_DIR)/%.obj: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $(CDEFINES) $< --include_path=$(TI_INC) $(CINC) $(CRYPTO_INC) -o $@

$(BUILD_DIR)/%.obj: $(SRC_DIR)/%.asm
	$(AS) $(ASFLAGS) $< --include_path=$(TI_INC) $(ASINC) -o $@

clean:
	rm -rf ./build/*
	rm -rf ./libraries/libs/*
	rm -rf ./libraries/include/*


