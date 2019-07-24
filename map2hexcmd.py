#!/usr/bin/env python

def _calc_fill_at_end ( file ):
	line = ""
	filling = 0
	sections = [] #[ name, origin, length ]

	with open ( file, "r" ) as f:
		while not "SECTION ALLOCATION MAP" in line:
			line = f.next()

		for i in range (0, 5): # skip the header of the section
			line = f.next()

		# get the lines defining a seciton into sections list
		while True:
			linearr = line.strip(" ").split()
			if not line.startswith(" ") and len ( linearr ) > 3:
				sections += (linearr[0], int (linearr[2], 16), int (linearr[3], 16)),
			last_len = len ( line )
			line = f.next ()
			if (last_len < 3) and (len ( line ) < 3):
				break

	# reverse order the sections list by origin of the section
	sect_rev = sorted(sections, key=lambda item : item[1], reverse=True)

	for i in range (0, len ( sect_rev )):
		if "$fill" in sect_rev[i][0]: # name
			filling += sect_rev[i][2] # length
			if i + 1 == len( sect_rev ) or not "$fill" in sect_rev[(i + 1)][0]:
				break # we break here because the previos section is not a fill

	return filling

# start address and size 
def _get_flash_layout ( map_file ):
	import os
	print "map_file=%s, size = %d" % (map_file, os.stat(map_file).st_size)
	
	origins = []
	useds = []
	with open ( map_file, "r" ) as f:
		line = ""
		# Calculate how much FLASH memory was defined by the user's liner 
		# command file.
		while not "MEMORY CONFIGURATION" in line:
			line = f.next()

		# skip the header of the section
		for i in range (0, 4):
			line = f.next()
		
		while len ( line ) > 2:
			line_tokens = line.strip(" ").split()
			this_origin = int (line_tokens[1], 16) 
			if this_origin < 0x00300000:
				origins += this_origin,
				useds += int (line_tokens[3], 16),
			line = f.next()

	start_addr = min(origins)
	flash_size = sum(useds)
	filled = _calc_fill_at_end ( map_file )
	_imgsize_full = flash_size - filled
	print "got _img_start=0x%x" % start_addr
	print "got flash_size=0x%x" % flash_size
	print "got filled=0x%x" % filled
	print "got _imgsize_full=0x%x" % _imgsize_full
	
	return (start_addr, _imgsize_full)
	
# end def _get_flash_layout

def write_convert_intel_hex ( dst_file, start, len, fill ):
	import time
	year = time.strftime ( "%Y" )
	full_date_time = time.strftime ( "%c" )
	
	with open ( dst_file, "w" ) as f:
		f.write ( 
"/* Copyright (c) %s TTTech. All rights reserved. Confidential proprietary\n"
" * Schoenbrunnerstrasse 7, A-1040 Wien, Austria. office@tttech.com\n"
" *\n"
" *\tConversion file for armhex.exe from Texas Instruments to create an TMS570\n"
" *\timage in intel hex format out of an *.out file.\n"
" *\n"
" *\t!!!This file is auto generated on %s!!!\n"
" *\n"
" */\n"
"\n"
"--image\n"
"--intel\n"
"\n"
"ROMS\n"
"{\n"
"\tFLAHS0: org=0x%08X, len=0x%08X, romwidth=32, fill=0x%08X\n"
"}\n" % (year, full_date_time, start, len, fill)
				)
		f.close ()
# end def write_convert_intel_hex

def create_convert_intel_hex_tms570ls3137zwt ( dst_file
											 , start=0
											 , len=0x00300000
											 , fill=0xFFFFFFFF ):
	write_convert_intel_hex ( dst_file, start, len, fill )
# end def create_convert_intel_hex_tms570ls3137zwt

# ..\hex2bin.exe -b -e a615_2 ..\bin\WITS2_bl.b0
# ..\crc64update.py ..\bin\WITS2_bl.a615_2 ..\bin\WITS2_bl.crclen_2
if __name__ == "__main__" :
	import os, sys
	filename_map = sys.argv[1]
	sfx = sys.argv[2] if len(sys.argv) > 2 else ""
	filename_noext = os.path.splitext(filename_map)[0]
	filename_cmd = filename_noext + "_convert_hex.cmd" + sfx
	(app_start, app_size) = _get_flash_layout(filename_map)
	create_convert_intel_hex_tms570ls3137zwt ( filename_cmd, start=app_start, len=app_size )

	print "succesfully written %s" % filename_cmd

	_img_start_aligned = app_start - (app_start % 0x8000)
	_filename_cmm = filename_noext + ".cmm" + sfx
	with open ( _filename_cmm, "w" ) as f:
		f.write ("GLOBAL &appInit\n\n&appInit=0x%08X" % _img_start_aligned)	
	print "appInit .cmm file succesfully written in %s" % _filename_cmm
