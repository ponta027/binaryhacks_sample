# dump elf file from by readelf

read section headers 

> readelf -S /bin/ls

read section No.1

> readelf -x1 /bin/ls

```
セクション '.interp' の 十六進数ダンプ:
  0x00010154 2f6c6962 2f6c642d 6c696e75 782d6172 /lib/ld-linux-ar
  0x00010164 6d68662e 736f2e33 00                mhf.so.3.

```


## Debug Section  

> readelf -w helloworld

```
.eh_frame セクションの内容:

00000000 ZERO terminator


.debug_aranges セクションの内容:

  長さ:                     28
  バージョン:               2
  .debug_info 内へのオフセット: 0
  ポインタサイズ:           4
  セグメントサイズ:         0

    アドレス   長さ
    00010440 00000030 
    00000000 00000000 

.debug_info セクションの内容:

  コンパイル単位 @ オフセット 0x0:
   長さ:        0x34d (32-bit)
   バージョン:    4
   Abbrev Offset: 0x0
   ポインタサイズ:4
 <0><b>: 省略番号: 1 (DW_TAG_compile_unit)
    <c>   DW_AT_producer    : (間接文字列、オフセット: 0x1d8): GNU C11 6.3.0 20170516 -march=armv6 -mfloat-abi=hard -mfpu=vfp -mtls-dialect=gnu -g
    <10>   DW_AT_language    : 12	(ANSI C99)
    <11>   DW_AT_name        : (間接文字列、オフセット: 0x277): helloworld.c
    <15>   DW_AT_comp_dir    : (間接文字列、オフセット: 0xb2): /home/pi/git/binaryhacks_sample/chapter2/hack8
    <19>   DW_AT_low_pc      : 0x10440
    <1d>   DW_AT_high_pc     : 0x30
    <21>   DW_AT_stmt_list   : 0x0
 <1><25>: 省略番号: 2 (DW_TAG_typedef)
    <26>   DW_AT_name        : (間接文字列、オフセット: 0x4f): size_t
    <2a>   DW_AT_decl_file   : 2
    <2b>   DW_AT_decl_line   : 216
    <2c>   DW_AT_type        : <0x30>
 <1><30>: 省略番号: 3 (DW_TAG_base_type)
    <31>   DW_AT_byte_size   : 4
    <32>   DW_AT_encoding    : 7	(unsigned)
    <33>   DW_AT_name        : (間接文字列、オフセット: 0x141): unsigned int
 <1><37>: 省略番号: 3 (DW_TAG_base_type)
    <38>   DW_AT_byte_size   : 1
    <39>   DW_AT_encoding    : 8	(unsigned char)
    <3a>   DW_AT_name        : (間接文字列、オフセット: 0x124): unsigned char
 <1><3e>: 省略番号: 3 (DW_TAG_base_type)
    <3f>   DW_AT_byte_size   : 2
    <40>   DW_AT_encoding    : 7	(unsigned)
    <41>   DW_AT_name        : (間接文字列、オフセット: 0x197): short unsigned int
 <1><45>: 省略番号: 3 (DW_TAG_base_type)
    <46>   DW_AT_byte_size   : 4
    <47>   DW_AT_encoding    : 7	(unsigned)
    <48>   DW_AT_name        : (間接文字列、オフセット: 0x13c): long unsigned int
 <1><4c>: 省略番号: 3 (DW_TAG_base_type)
    <4d>   DW_AT_byte_size   : 1
    <4e>   DW_AT_encoding    : 6	(signed char)
    <4f>   DW_AT_name        : (間接文字列、オフセット: 0x126): signed char
 <1><53>: 省略番号: 3 (DW_TAG_base_type)
    <54>   DW_AT_byte_size   : 2
    <55>   DW_AT_encoding    : 5	(signed)
    <56>   DW_AT_name        : (間接文字列、オフセット: 0x45): short int
 <1><5a>: 省略番号: 4 (DW_TAG_base_type)
    <5b>   DW_AT_byte_size   : 4
    <5c>   DW_AT_encoding    : 5	(signed)
    <5d>   DW_AT_name        : int
 <1><61>: 省略番号: 3 (DW_TAG_base_type)
    <62>   DW_AT_byte_size   : 8
    <63>   DW_AT_encoding    : 5	(signed)
    <64>   DW_AT_name        : (間接文字列、オフセット: 0x9e): long long int
 <1><68>: 省略番号: 3 (DW_TAG_base_type)
    <69>   DW_AT_byte_size   : 8
    <6a>   DW_AT_encoding    : 7	(unsigned)
    <6b>   DW_AT_name        : (間接文字列、オフセット: 0x137): long long unsigned int
 <1><6f>: 省略番号: 2 (DW_TAG_typedef)
    <70>   DW_AT_name        : (間接文字列、オフセット: 0xc): __quad_t
    <74>   DW_AT_decl_file   : 3
    <75>   DW_AT_decl_line   : 55
    <76>   DW_AT_type        : <0x61>
 <1><7a>: 省略番号: 2 (DW_TAG_typedef)
    <7b>   DW_AT_name        : (間接文字列、オフセット: 0x236): __off_t
    <7f>   DW_AT_decl_file   : 3
    <80>   DW_AT_decl_line   : 131
    <81>   DW_AT_type        : <0x85>
 <1><85>: 省略番号: 3 (DW_TAG_base_type)
    <86>   DW_AT_byte_size   : 4
    <87>   DW_AT_encoding    : 5	(signed)
    <88>   DW_AT_name        : (間接文字列、オフセット: 0xa3): long int
 <1><8c>: 省略番号: 2 (DW_TAG_typedef)
    <8d>   DW_AT_name        : (間接文字列、オフセット: 0x22c): __off64_t
    <91>   DW_AT_decl_file   : 3
    <92>   DW_AT_decl_line   : 132
    <93>   DW_AT_type        : <0x6f>
 <1><97>: 省略番号: 3 (DW_TAG_base_type)
    <98>   DW_AT_byte_size   : 4
    <99>   DW_AT_encoding    : 7	(unsigned)
    <9a>   DW_AT_name        : (間接文字列、オフセット: 0x56): sizetype
 <1><9e>: 省略番号: 5 (DW_TAG_pointer_type)
    <9f>   DW_AT_byte_size   : 4
 <1><a0>: 省略番号: 6 (DW_TAG_pointer_type)
    <a1>   DW_AT_byte_size   : 4
    <a2>   DW_AT_type        : <0xa6>
 <1><a6>: 省略番号: 3 (DW_TAG_base_type)
    <a7>   DW_AT_byte_size   : 1
    <a8>   DW_AT_encoding    : 8	(unsigned char)
    <a9>   DW_AT_name        : (間接文字列、オフセット: 0x12d): char
 <1><ad>: 省略番号: 7 (DW_TAG_const_type)
    <ae>   DW_AT_type        : <0xa6>
 <1><b2>: 省略番号: 8 (DW_TAG_structure_type)
    <b3>   DW_AT_name        : (間接文字列、オフセット: 0x11b): _IO_FILE
    <b7>   DW_AT_byte_size   : 152
    <b8>   DW_AT_decl_file   : 4
    <b9>   DW_AT_decl_line   : 241
    <ba>   DW_AT_sibling     : <0x22f>
 <2><be>: 省略番号: 9 (DW_TAG_member)
    <bf>   DW_AT_name        : (間接文字列、オフセット: 0x6d): _flags
    <c3>   DW_AT_decl_file   : 4
    <c4>   DW_AT_decl_line   : 242
    <c5>   DW_AT_type        : <0x5a>
    <c9>   DW_AT_data_member_location: 0
 <2><ca>: 省略番号: 9 (DW_TAG_member)
    <cb>   DW_AT_name        : (間接文字列、オフセット: 0x18a): _IO_read_ptr
    <cf>   DW_AT_decl_file   : 4
    <d0>   DW_AT_decl_line   : 247
    <d1>   DW_AT_type        : <0xa0>
    <d5>   DW_AT_data_member_location: 4
 <2><d6>: 省略番号: 9 (DW_TAG_member)
    <d7>   DW_AT_name        : (間接文字列、オフセット: 0x8a): _IO_read_end
    <db>   DW_AT_decl_file   : 4
    <dc>   DW_AT_decl_line   : 248
    <dd>   DW_AT_type        : <0xa0>
    <e1>   DW_AT_data_member_location: 8
 <2><e2>: 省略番号: 9 (DW_TAG_member)
    <e3>   DW_AT_name        : (間接文字列、オフセット: 0x269): _IO_read_base
    <e7>   DW_AT_decl_file   : 4
    <e8>   DW_AT_decl_line   : 249
    <e9>   DW_AT_type        : <0xa0>
    <ed>   DW_AT_data_member_location: 12
 <2><ee>: 省略番号: 9 (DW_TAG_member)
    <ef>   DW_AT_name        : (間接文字列、オフセット: 0x172): _IO_write_base
    <f3>   DW_AT_decl_file   : 4
    <f4>   DW_AT_decl_line   : 250
    <f5>   DW_AT_type        : <0xa0>
    <f9>   DW_AT_data_member_location: 16
 <2><fa>: 省略番号: 9 (DW_TAG_member)
    <fb>   DW_AT_name        : (間接文字列、オフセット: 0x5f): _IO_write_ptr
    <ff>   DW_AT_decl_file   : 4
    <100>   DW_AT_decl_line   : 251
    <101>   DW_AT_type        : <0xa0>
    <105>   DW_AT_data_member_location: 20
 <2><106>: 省略番号: 9 (DW_TAG_member)
    <107>   DW_AT_name        : (間接文字列、オフセット: 0x37): _IO_write_end
    <10b>   DW_AT_decl_file   : 4
    <10c>   DW_AT_decl_line   : 252
    <10d>   DW_AT_type        : <0xa0>
    <111>   DW_AT_data_member_location: 24
 <2><112>: 省略番号: 9 (DW_TAG_member)
    <113>   DW_AT_name        : (間接文字列、オフセット: 0x74): _IO_buf_base
    <117>   DW_AT_decl_file   : 4
    <118>   DW_AT_decl_line   : 253
    <119>   DW_AT_type        : <0xa0>
    <11d>   DW_AT_data_member_location: 28
 <2><11e>: 省略番号: 9 (DW_TAG_member)
    <11f>   DW_AT_name        : (間接文字列、オフセット: 0x0): _IO_buf_end
    <123>   DW_AT_decl_file   : 4
    <124>   DW_AT_decl_line   : 254
    <125>   DW_AT_type        : <0xa0>
    <129>   DW_AT_data_member_location: 32
 <2><12a>: 省略番号: 10 (DW_TAG_member)
    <12b>   DW_AT_name        : (間接文字列、オフセット: 0x293): _IO_save_base
    <12f>   DW_AT_decl_file   : 4
    <130>   DW_AT_decl_line   : 256
    <132>   DW_AT_type        : <0xa0>
    <136>   DW_AT_data_member_location: 36
 <2><137>: 省略番号: 10 (DW_TAG_member)
    <138>   DW_AT_name        : (間接文字列、オフセット: 0x245): _IO_backup_base
    <13c>   DW_AT_decl_file   : 4
    <13d>   DW_AT_decl_line   : 257
    <13f>   DW_AT_type        : <0xa0>
    <143>   DW_AT_data_member_location: 40
 <2><144>: 省略番号: 10 (DW_TAG_member)
    <145>   DW_AT_name        : (間接文字列、オフセット: 0x2a): _IO_save_end
    <149>   DW_AT_decl_file   : 4
    <14a>   DW_AT_decl_line   : 258
    <14c>   DW_AT_type        : <0xa0>
    <150>   DW_AT_data_member_location: 44
 <2><151>: 省略番号: 10 (DW_TAG_member)
    <152>   DW_AT_name        : (間接文字列、オフセット: 0x81): _markers
    <156>   DW_AT_decl_file   : 4
    <157>   DW_AT_decl_line   : 260
    <159>   DW_AT_type        : <0x267>
    <15d>   DW_AT_data_member_location: 48
 <2><15e>: 省略番号: 10 (DW_TAG_member)
    <15f>   DW_AT_name        : (間接文字列、オフセット: 0x23e): _chain
    <163>   DW_AT_decl_file   : 4
    <164>   DW_AT_decl_line   : 262
    <166>   DW_AT_type        : <0x26d>
    <16a>   DW_AT_data_member_location: 52
 <2><16b>: 省略番号: 10 (DW_TAG_member)
    <16c>   DW_AT_name        : (間接文字列、オフセット: 0x2ad): _fileno
    <170>   DW_AT_decl_file   : 4
    <171>   DW_AT_decl_line   : 264
    <173>   DW_AT_type        : <0x5a>
    <177>   DW_AT_data_member_location: 56
 <2><178>: 省略番号: 10 (DW_TAG_member)
    <179>   DW_AT_name        : (間接文字列、オフセット: 0x25b): _flags2
    <17d>   DW_AT_decl_file   : 4
    <17e>   DW_AT_decl_line   : 268
    <180>   DW_AT_type        : <0x5a>
    <184>   DW_AT_data_member_location: 60
 <2><185>: 省略番号: 10 (DW_TAG_member)
    <186>   DW_AT_name        : (間接文字列、オフセット: 0x15): _old_offset
    <18a>   DW_AT_decl_file   : 4
    <18b>   DW_AT_decl_line   : 270
    <18d>   DW_AT_type        : <0x7a>
    <191>   DW_AT_data_member_location: 64
 <2><192>: 省略番号: 10 (DW_TAG_member)
    <193>   DW_AT_name        : (間接文字列、オフセット: 0xe1): _cur_column
    <197>   DW_AT_decl_file   : 4
    <198>   DW_AT_decl_line   : 274
    <19a>   DW_AT_type        : <0x3e>
    <19e>   DW_AT_data_member_location: 68
 <2><19f>: 省略番号: 10 (DW_TAG_member)
    <1a0>   DW_AT_name        : (間接文字列、オフセット: 0x284): _vtable_offset
    <1a4>   DW_AT_decl_file   : 4
    <1a5>   DW_AT_decl_line   : 275
    <1a7>   DW_AT_type        : <0x4c>
    <1ab>   DW_AT_data_member_location: 70
 <2><1ac>: 省略番号: 10 (DW_TAG_member)
    <1ad>   DW_AT_name        : (間接文字列、オフセット: 0x168): _shortbuf
    <1b1>   DW_AT_decl_file   : 4
    <1b2>   DW_AT_decl_line   : 276
    <1b4>   DW_AT_type        : <0x273>
    <1b8>   DW_AT_data_member_location: 71
 <2><1b9>: 省略番号: 10 (DW_TAG_member)
    <1ba>   DW_AT_name        : (間接文字列、オフセット: 0xac): _lock
    <1be>   DW_AT_decl_file   : 4
    <1bf>   DW_AT_decl_line   : 280
    <1c1>   DW_AT_type        : <0x283>
    <1c5>   DW_AT_data_member_location: 72
 <2><1c6>: 省略番号: 10 (DW_TAG_member)
    <1c7>   DW_AT_name        : (間接文字列、オフセット: 0x19): _offset
    <1cb>   DW_AT_decl_file   : 4
    <1cc>   DW_AT_decl_line   : 289
    <1ce>   DW_AT_type        : <0x8c>
    <1d2>   DW_AT_data_member_location: 80
 <2><1d3>: 省略番号: 10 (DW_TAG_member)
    <1d4>   DW_AT_name        : (間接文字列、オフセット: 0x1b5): __pad1
    <1d8>   DW_AT_decl_file   : 4
    <1d9>   DW_AT_decl_line   : 297
    <1db>   DW_AT_type        : <0x9e>
    <1df>   DW_AT_data_member_location: 88
 <2><1e0>: 省略番号: 10 (DW_TAG_member)
    <1e1>   DW_AT_name        : (間接文字列、オフセット: 0x1bc): __pad2
    <1e5>   DW_AT_decl_file   : 4
    <1e6>   DW_AT_decl_line   : 298
    <1e8>   DW_AT_type        : <0x9e>
    <1ec>   DW_AT_data_member_location: 92
 <2><1ed>: 省略番号: 10 (DW_TAG_member)
    <1ee>   DW_AT_name        : (間接文字列、オフセット: 0x1c3): __pad3
    <1f2>   DW_AT_decl_file   : 4
    <1f3>   DW_AT_decl_line   : 299
    <1f5>   DW_AT_type        : <0x9e>
    <1f9>   DW_AT_data_member_location: 96
 <2><1fa>: 省略番号: 10 (DW_TAG_member)
    <1fb>   DW_AT_name        : (間接文字列、オフセット: 0x1ca): __pad4
    <1ff>   DW_AT_decl_file   : 4
    <200>   DW_AT_decl_line   : 300
    <202>   DW_AT_type        : <0x9e>
    <206>   DW_AT_data_member_location: 100
 <2><207>: 省略番号: 10 (DW_TAG_member)
    <208>   DW_AT_name        : (間接文字列、オフセット: 0x1d1): __pad5
    <20c>   DW_AT_decl_file   : 4
    <20d>   DW_AT_decl_line   : 302
    <20f>   DW_AT_type        : <0x25>
    <213>   DW_AT_data_member_location: 104
 <2><214>: 省略番号: 10 (DW_TAG_member)
    <215>   DW_AT_name        : (間接文字列、オフセット: 0x263): _mode
    <219>   DW_AT_decl_file   : 4
    <21a>   DW_AT_decl_line   : 303
    <21c>   DW_AT_type        : <0x5a>
    <220>   DW_AT_data_member_location: 108
 <2><221>: 省略番号: 10 (DW_TAG_member)
    <222>   DW_AT_name        : (間接文字列、オフセット: 0x181): _unused2
    <226>   DW_AT_decl_file   : 4
    <227>   DW_AT_decl_line   : 305
    <229>   DW_AT_type        : <0x289>
    <22d>   DW_AT_data_member_location: 112
 <2><22e>: Abbrev Number: 0
 <1><22f>: 省略番号: 11 (DW_TAG_typedef)
    <230>   DW_AT_name        : (間接文字列、オフセット: 0x2cc): _IO_lock_t
    <234>   DW_AT_decl_file   : 4
    <235>   DW_AT_decl_line   : 150
 <1><236>: 省略番号: 8 (DW_TAG_structure_type)
    <237>   DW_AT_name        : (間接文字列、オフセット: 0x15d): _IO_marker
    <23b>   DW_AT_byte_size   : 12
    <23c>   DW_AT_decl_file   : 4
    <23d>   DW_AT_decl_line   : 156
    <23e>   DW_AT_sibling     : <0x267>
 <2><242>: 省略番号: 9 (DW_TAG_member)
    <243>   DW_AT_name        : (間接文字列、オフセット: 0x1af): _next
    <247>   DW_AT_decl_file   : 4
    <248>   DW_AT_decl_line   : 157
    <249>   DW_AT_type        : <0x267>
    <24d>   DW_AT_data_member_location: 0
 <2><24e>: 省略番号: 9 (DW_TAG_member)
    <24f>   DW_AT_name        : (間接文字列、オフセット: 0x115): _sbuf
    <253>   DW_AT_decl_file   : 4
    <254>   DW_AT_decl_line   : 158
    <255>   DW_AT_type        : <0x26d>
    <259>   DW_AT_data_member_location: 4
 <2><25a>: 省略番号: 9 (DW_TAG_member)
    <25b>   DW_AT_name        : (間接文字列、オフセット: 0x10b): _pos
    <25f>   DW_AT_decl_file   : 4
    <260>   DW_AT_decl_line   : 162
    <261>   DW_AT_type        : <0x5a>
    <265>   DW_AT_data_member_location: 8
 <2><266>: Abbrev Number: 0
 <1><267>: 省略番号: 6 (DW_TAG_pointer_type)
    <268>   DW_AT_byte_size   : 4
    <269>   DW_AT_type        : <0x236>
 <1><26d>: 省略番号: 6 (DW_TAG_pointer_type)
    <26e>   DW_AT_byte_size   : 4
    <26f>   DW_AT_type        : <0xb2>
 <1><273>: 省略番号: 12 (DW_TAG_array_type)
    <274>   DW_AT_type        : <0xa6>
    <278>   DW_AT_sibling     : <0x283>
 <2><27c>: 省略番号: 13 (DW_TAG_subrange_type)
    <27d>   DW_AT_type        : <0x97>
    <281>   DW_AT_upper_bound : 0
 <2><282>: Abbrev Number: 0
 <1><283>: 省略番号: 6 (DW_TAG_pointer_type)
    <284>   DW_AT_byte_size   : 4
    <285>   DW_AT_type        : <0x22f>
 <1><289>: 省略番号: 12 (DW_TAG_array_type)
    <28a>   DW_AT_type        : <0xa6>
    <28e>   DW_AT_sibling     : <0x299>
 <2><292>: 省略番号: 13 (DW_TAG_subrange_type)
    <293>   DW_AT_type        : <0x97>
    <297>   DW_AT_upper_bound : 39
 <2><298>: Abbrev Number: 0
 <1><299>: 省略番号: 14 (DW_TAG_structure_type)
    <29a>   DW_AT_name        : (間接文字列、オフセット: 0xfd): _IO_FILE_plus
    <29e>   DW_AT_declaration : 1
 <1><29e>: 省略番号: 15 (DW_TAG_variable)
    <29f>   DW_AT_name        : (間接文字列、オフセット: 0x14e): _IO_2_1_stdin_
    <2a3>   DW_AT_decl_file   : 4
    <2a4>   DW_AT_decl_line   : 315
    <2a6>   DW_AT_type        : <0x299>
    <2aa>   DW_AT_external    : 1
    <2aa>   DW_AT_declaration : 1
 <1><2aa>: 省略番号: 15 (DW_TAG_variable)
    <2ab>   DW_AT_name        : (間接文字列、オフセット: 0x2bc): _IO_2_1_stdout_
    <2af>   DW_AT_decl_file   : 4
    <2b0>   DW_AT_decl_line   : 316
    <2b2>   DW_AT_type        : <0x299>
    <2b6>   DW_AT_external    : 1
    <2b6>   DW_AT_declaration : 1
 <1><2b6>: 省略番号: 15 (DW_TAG_variable)
    <2b7>   DW_AT_name        : (間接文字列、オフセット: 0xed): _IO_2_1_stderr_
    <2bb>   DW_AT_decl_file   : 4
    <2bc>   DW_AT_decl_line   : 317
    <2be>   DW_AT_type        : <0x299>
    <2c2>   DW_AT_external    : 1
    <2c2>   DW_AT_declaration : 1
 <1><2c2>: 省略番号: 6 (DW_TAG_pointer_type)
    <2c3>   DW_AT_byte_size   : 4
    <2c4>   DW_AT_type        : <0xad>
 <1><2c8>: 省略番号: 7 (DW_TAG_const_type)
    <2c9>   DW_AT_type        : <0x2c2>
 <1><2cd>: 省略番号: 16 (DW_TAG_variable)
    <2ce>   DW_AT_name        : (間接文字列、オフセット: 0x255): stdin
    <2d2>   DW_AT_decl_file   : 5
    <2d3>   DW_AT_decl_line   : 170
    <2d4>   DW_AT_type        : <0x26d>
    <2d8>   DW_AT_external    : 1
    <2d8>   DW_AT_declaration : 1
 <1><2d8>: 省略番号: 16 (DW_TAG_variable)
    <2d9>   DW_AT_name        : (間接文字列、オフセット: 0x2b5): stdout
    <2dd>   DW_AT_decl_file   : 5
    <2de>   DW_AT_decl_line   : 171
    <2df>   DW_AT_type        : <0x26d>
    <2e3>   DW_AT_external    : 1
    <2e3>   DW_AT_declaration : 1
 <1><2e3>: 省略番号: 16 (DW_TAG_variable)
    <2e4>   DW_AT_name        : (間接文字列、オフセット: 0x97): stderr
    <2e8>   DW_AT_decl_file   : 5
    <2e9>   DW_AT_decl_line   : 172
    <2ea>   DW_AT_type        : <0x26d>
    <2ee>   DW_AT_external    : 1
    <2ee>   DW_AT_declaration : 1
 <1><2ee>: 省略番号: 16 (DW_TAG_variable)
    <2ef>   DW_AT_name        : (間接文字列、オフセット: 0x21): sys_nerr
    <2f3>   DW_AT_decl_file   : 6
    <2f4>   DW_AT_decl_line   : 26
    <2f5>   DW_AT_type        : <0x5a>
    <2f9>   DW_AT_external    : 1
    <2f9>   DW_AT_declaration : 1
 <1><2f9>: 省略番号: 12 (DW_TAG_array_type)
    <2fa>   DW_AT_type        : <0x2c8>
    <2fe>   DW_AT_sibling     : <0x304>
 <2><302>: 省略番号: 17 (DW_TAG_subrange_type)
 <2><303>: Abbrev Number: 0
 <1><304>: 省略番号: 7 (DW_TAG_const_type)
    <305>   DW_AT_type        : <0x2f9>
 <1><309>: 省略番号: 16 (DW_TAG_variable)
    <30a>   DW_AT_name        : (間接文字列、オフセット: 0x2a1): sys_errlist
    <30e>   DW_AT_decl_file   : 6
    <30f>   DW_AT_decl_line   : 27
    <310>   DW_AT_type        : <0x304>
    <314>   DW_AT_external    : 1
    <314>   DW_AT_declaration : 1
 <1><314>: 省略番号: 18 (DW_TAG_subprogram)
    <315>   DW_AT_external    : 1
    <315>   DW_AT_name        : (間接文字列、オフセット: 0x1aa): main
    <319>   DW_AT_decl_file   : 1
    <31a>   DW_AT_decl_line   : 3
    <31b>   DW_AT_prototyped  : 1
    <31b>   DW_AT_type        : <0x5a>
    <31f>   DW_AT_low_pc      : 0x10440
    <323>   DW_AT_high_pc     : 0x30
    <327>   DW_AT_frame_base  : 1 バイトブロック: 9c 	(DW_OP_call_frame_cfa)
    <329>   DW_AT_GNU_all_tail_call_sites: 1
    <329>   DW_AT_sibling     : <0x34a>
 <2><32d>: 省略番号: 19 (DW_TAG_formal_parameter)
    <32e>   DW_AT_name        : (間接文字列、オフセット: 0x132): argc
    <332>   DW_AT_decl_file   : 1
    <333>   DW_AT_decl_line   : 3
    <334>   DW_AT_type        : <0x5a>
    <338>   DW_AT_location    : 2 バイトブロック: 91 74 	(DW_OP_fbreg: -12)
 <2><33b>: 省略番号: 19 (DW_TAG_formal_parameter)
    <33c>   DW_AT_name        : (間接文字列、オフセット: 0x110): argv
    <340>   DW_AT_decl_file   : 1
    <341>   DW_AT_decl_line   : 3
    <342>   DW_AT_type        : <0x34a>
    <346>   DW_AT_location    : 2 バイトブロック: 91 70 	(DW_OP_fbreg: -16)
 <2><349>: Abbrev Number: 0
 <1><34a>: 省略番号: 6 (DW_TAG_pointer_type)
    <34b>   DW_AT_byte_size   : 4
    <34c>   DW_AT_type        : <0xa0>
 <1><350>: Abbrev Number: 0

.debug_abbrev セクションの内容:

  Number TAG (0x0)
   1      DW_TAG_compile_unit    [子あり]
    DW_AT_producer     DW_FORM_strp
    DW_AT_language     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT_comp_dir     DW_FORM_strp
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_stmt_list    DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   2      DW_TAG_typedef    [子なし]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   3      DW_TAG_base_type    [子なし]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT value: 0     DW_FORM value: 0
   4      DW_TAG_base_type    [子なし]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_string
    DW_AT value: 0     DW_FORM value: 0
   5      DW_TAG_pointer_type    [子なし]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   6      DW_TAG_pointer_type    [子なし]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   7      DW_TAG_const_type    [子なし]
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   8      DW_TAG_structure_type    [子あり]
    DW_AT_name         DW_FORM_strp
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   9      DW_TAG_member    [子なし]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_data_member_location DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   10      DW_TAG_member    [子なし]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data2
    DW_AT_type         DW_FORM_ref4
    DW_AT_data_member_location DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   11      DW_TAG_typedef    [子なし]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   12      DW_TAG_array_type    [子あり]
    DW_AT_type         DW_FORM_ref4
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   13      DW_TAG_subrange_type    [子なし]
    DW_AT_type         DW_FORM_ref4
    DW_AT_upper_bound  DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   14      DW_TAG_structure_type    [子なし]
    DW_AT_name         DW_FORM_strp
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   15      DW_TAG_variable    [子なし]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data2
    DW_AT_type         DW_FORM_ref4
    DW_AT_external     DW_FORM_flag_present
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   16      DW_TAG_variable    [子なし]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_external     DW_FORM_flag_present
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   17      DW_TAG_subrange_type    [子なし]
    DW_AT value: 0     DW_FORM value: 0
   18      DW_TAG_subprogram    [子あり]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_GNU_all_tail_call_sites DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   19      DW_TAG_formal_parameter    [子なし]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0

セクション .debug_line のデバッグ内容の生ダンプ:

  オフセット:                  0x0
  長さ:                        213
  DWARF バージョン:            2
  Prologue の長さ:             191
  最小命令長:                  2
  'is_stmt' の初期値:          1
  Line ベース:                 -5
  Line 範囲:                   14
  オペコードベース:            13

 オペコード:
  オペコード 1 は 0 個の引数を持ちます
  オペコード 2 は 1 個の引数を持ちます
  オペコード 3 は 1 個の引数を持ちます
  オペコード 4 は 1 個の引数を持ちます
  オペコード 5 は 1 個の引数を持ちます
  オペコード 6 は 0 個の引数を持ちます
  オペコード 7 は 0 個の引数を持ちます
  オペコード 8 は 0 個の引数を持ちます
  オペコード 9 は 1 個の引数を持ちます
  オペコード 10 は 0 個の引数を持ちます
  オペコード 11 は 0 個の引数を持ちます
  オペコード 12 は 1 個の引数を持ちます

 The Directory Table (offset 0x1b):
  1	/usr/lib/gcc/arm-linux-gnueabihf/6/include
  2	/usr/include/arm-linux-gnueabihf/bits
  3	/usr/include

 The File Name Table (offset 0x7a):
  Entry	Dir	時刻	サイズ	名前
  1	0	0	0	helloworld.c
  2	1	0	0	stddef.h
  3	2	0	0	types.h
  4	3	0	0	libio.h
  5	3	0	0	stdio.h
  6	2	0	0	sys_errlist.h

 Line Number Statements:
  [0x000000c9]  拡張命令コード 2: 設定アドレス 0x10440
  [0x000000d0]  特殊命令コード 8: アドレスを 0 分進め 0x10440 とし、 行を 3 分進め 4 とします
  [0x000000d1]  特殊命令コード 146: アドレスを 20 分進め 0x10454 とし、 行を 1 分進め 5 とします
  [0x000000d2]  特殊命令コード 62: アドレスを 8 分進め 0x1045c とし、 行を 1 分進め 6 とします
  [0x000000d3]  特殊命令コード 34: アドレスを 4 分進め 0x10460 とし、 行を 1 分進め 7 とします
  [0x000000d4]  PC を 16 分進め 0x10470 とします
  [0x000000d6]  拡張命令コード 1: 列の終り


.debug_frame セクションの内容:

00000000 0000000c ffffffff CIE
  Version:               1
  Augmentation:          ""
  Code alignment factor: 2
  Data alignment factor: -4
  Return address column: 14

  DW_CFA_def_cfa: r13 ofs 0

00000010 0000001c 00000000 FDE cie=00000000 pc=00010440..00010470
  DW_CFA_advance_loc: 4 to 00010444
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r11 at cfa-8
  DW_CFA_offset: r14 at cfa-4
  DW_CFA_advance_loc: 4 to 00010448
  DW_CFA_def_cfa: r11 ofs 4
  DW_CFA_advance_loc: 32 to 00010468
  DW_CFA_def_cfa: r13 ofs 8
  DW_CFA_nop

.debug_str セクションの内容:

  0x00000000 5f494f5f 6275665f 656e6400 5f5f7175 _IO_buf_end.__qu
  0x00000010 61645f74 005f6f6c 645f6f66 66736574 ad_t._old_offset
  0x00000020 00737973 5f6e6572 72005f49 4f5f7361 .sys_nerr._IO_sa
  0x00000030 76655f65 6e64005f 494f5f77 72697465 ve_end._IO_write
  0x00000040 5f656e64 0073686f 72742069 6e740073 _end.short int.s
  0x00000050 697a655f 74007369 7a657479 7065005f ize_t.sizetype._
  0x00000060 494f5f77 72697465 5f707472 005f666c IO_write_ptr._fl
  0x00000070 61677300 5f494f5f 6275665f 62617365 ags._IO_buf_base
  0x00000080 005f6d61 726b6572 73005f49 4f5f7265 ._markers._IO_re
  0x00000090 61645f65 6e640073 74646572 72006c6f ad_end.stderr.lo
  0x000000a0 6e67206c 6f6e6720 696e7400 5f6c6f63 ng long int._loc
  0x000000b0 6b002f68 6f6d652f 70692f67 69742f62 k./home/pi/git/b
  0x000000c0 696e6172 79686163 6b735f73 616d706c inaryhacks_sampl
  0x000000d0 652f6368 61707465 72322f68 61636b38 e/chapter2/hack8
  0x000000e0 005f6375 725f636f 6c756d6e 005f494f ._cur_column._IO
  0x000000f0 5f325f31 5f737464 6572725f 005f494f _2_1_stderr_._IO
  0x00000100 5f46494c 455f706c 7573005f 706f7300 _FILE_plus._pos.
  0x00000110 61726776 005f7362 7566005f 494f5f46 argv._sbuf._IO_F
  0x00000120 494c4500 756e7369 676e6564 20636861 ILE.unsigned cha
  0x00000130 72006172 6763006c 6f6e6720 6c6f6e67 r.argc.long long
  0x00000140 20756e73 69676e65 6420696e 74005f49  unsigned int._I
  0x00000150 4f5f325f 315f7374 64696e5f 005f494f O_2_1_stdin_._IO
  0x00000160 5f6d6172 6b657200 5f73686f 72746275 _marker._shortbu
  0x00000170 66005f49 4f5f7772 6974655f 62617365 f._IO_write_base
  0x00000180 005f756e 75736564 32005f49 4f5f7265 ._unused2._IO_re
  0x00000190 61645f70 74720073 686f7274 20756e73 ad_ptr.short uns
  0x000001a0 69676e65 6420696e 74006d61 696e005f igned int.main._
  0x000001b0 6e657874 005f5f70 61643100 5f5f7061 next.__pad1.__pa
  0x000001c0 6432005f 5f706164 33005f5f 70616434 d2.__pad3.__pad4
  0x000001d0 005f5f70 61643500 474e5520 43313120 .__pad5.GNU C11 
  0x000001e0 362e332e 30203230 31373035 3136202d 6.3.0 20170516 -
  0x000001f0 6d617263 683d6172 6d763620 2d6d666c march=armv6 -mfl
  0x00000200 6f61742d 6162693d 68617264 202d6d66 oat-abi=hard -mf
  0x00000210 70753d76 6670202d 6d746c73 2d646961 pu=vfp -mtls-dia
  0x00000220 6c656374 3d676e75 202d6700 5f5f6f66 lect=gnu -g.__of
  0x00000230 6636345f 74005f5f 6f66665f 74005f63 f64_t.__off_t._c
  0x00000240 6861696e 005f494f 5f626163 6b75705f hain._IO_backup_
  0x00000250 62617365 00737464 696e005f 666c6167 base.stdin._flag
  0x00000260 7332005f 6d6f6465 005f494f 5f726561 s2._mode._IO_rea
  0x00000270 645f6261 73650068 656c6c6f 776f726c d_base.helloworl
  0x00000280 642e6300 5f767461 626c655f 6f666673 d.c._vtable_offs
  0x00000290 6574005f 494f5f73 6176655f 62617365 et._IO_save_base
  0x000002a0 00737973 5f657272 6c697374 005f6669 .sys_errlist._fi
  0x000002b0 6c656e6f 00737464 6f757400 5f494f5f leno.stdout._IO_
  0x000002c0 325f315f 7374646f 75745f00 5f494f5f 2_1_stdout_._IO_
  0x000002d0 6c6f636b 5f7400                     lock_t.

```
