# Hack7 ldddで共有ライブラリの依存関係をチェックする


## objdump 

> objdump -p /bin/ls

```
/bin/ls:     ファイル形式 elf32-littlearm

プログラムヘッダ:
0x70000001 off    0x000192d0 vaddr 0x000292d0 paddr 0x000292d0 align 2**2
         filesz 0x00000008 memsz 0x00000008 flags r--
    PHDR off    0x00000034 vaddr 0x00010034 paddr 0x00010034 align 2**2
         filesz 0x00000120 memsz 0x00000120 flags r-x
  INTERP off    0x00000154 vaddr 0x00010154 paddr 0x00010154 align 2**0
         filesz 0x00000019 memsz 0x00000019 flags r--
    LOAD off    0x00000000 vaddr 0x00010000 paddr 0x00010000 align 2**16
         filesz 0x000192dc memsz 0x000192dc flags r-x
    LOAD off    0x00019ef4 vaddr 0x00039ef4 paddr 0x00039ef4 align 2**16
         filesz 0x00000418 memsz 0x0000151c flags rw-
 DYNAMIC off    0x00019f04 vaddr 0x00039f04 paddr 0x00039f04 align 2**2
         filesz 0x000000f8 memsz 0x000000f8 flags rw-
    NOTE off    0x00000170 vaddr 0x00010170 paddr 0x00010170 align 2**2
         filesz 0x00000044 memsz 0x00000044 flags r--
   STACK off    0x00000000 vaddr 0x00000000 paddr 0x00000000 align 2**4
         filesz 0x00000000 memsz 0x00000000 flags rw-
   RELRO off    0x00019ef4 vaddr 0x00039ef4 paddr 0x00039ef4 align 2**0
         filesz 0x0000010c memsz 0x0000010c flags r--

動的セクション:
  NEEDED               libselinux.so.1
  NEEDED               libc.so.6
  NEEDED               ld-linux-armhf.so.3
  INIT                 0x00011a24
  FINI                 0x00024e14
  INIT_ARRAY           0x00039ef4
  INIT_ARRAYSZ         0x00000004
  FINI_ARRAY           0x00039ef8
  FINI_ARRAYSZ         0x00000004
  GNU_HASH             0x000101b4
  STRTAB               0x00010f18
  SYMTAB               0x00010668
  STRSZ                0x000005f5
  SYMENT               0x00000010
  DEBUG                0x00000000
  PLTGOT               0x0003a000
  PLTRELSZ             0x00000370
  PLTREL               0x00000011
  JMPREL               0x000116b4
  REL                  0x00011674
  RELSZ                0x00000040
  RELENT               0x00000008
  VERNEED              0x00011624
  VERNEEDNUM           0x00000002
  VERSYM               0x0001150e

バージョン参照:
  ld-linux-armhf.so.3 からの要求:
    0x0d696914 0x00 03 GLIBC_2.4
  libc.so.6 からの要求:
    0x06969197 0x00 04 GLIBC_2.17
    0x0d696914 0x00 02 GLIBC_2.4
private フラグ = 5000400: [バージョン 5 EABI] [hard-float ABI]

```

## readelf

> readelf -d /bin/ls 

```
Dynamic section at offset 0x19f04 contains 26 entries:
 タグ        タイプ                       名前/値
 0x00000001 (NEEDED)                     共有ライブラリ: [libselinux.so.1]
 0x00000001 (NEEDED)                     共有ライブラリ: [libc.so.6]
 0x00000001 (NEEDED)                     共有ライブラリ: [ld-linux-armhf.so.3]
 0x0000000c (INIT)                       0x11a24
 0x0000000d (FINI)                       0x24e14
 0x00000019 (INIT_ARRAY)                 0x39ef4
 0x0000001b (INIT_ARRAYSZ)               4 (バイト)
 0x0000001a (FINI_ARRAY)                 0x39ef8
 0x0000001c (FINI_ARRAYSZ)               4 (バイト)
 0x6ffffef5 (GNU_HASH)                   0x101b4
 0x00000005 (STRTAB)                     0x10f18
 0x00000006 (SYMTAB)                     0x10668
 0x0000000a (STRSZ)                      1525 (バイト)
 0x0000000b (SYMENT)                     16 (バイト)
 0x00000015 (DEBUG)                      0x0
 0x00000003 (PLTGOT)                     0x3a000
 0x00000002 (PLTRELSZ)                   880 (バイト)
 0x00000014 (PLTREL)                     REL
 0x00000017 (JMPREL)                     0x116b4
 0x00000011 (REL)                        0x11674
 0x00000012 (RELSZ)                      64 (バイト)
 0x00000013 (RELENT)                     8 (バイト)
 0x6ffffffe (VERNEED)                    0x11624
 0x6fffffff (VERNEEDNUM)                 2
 0x6ffffff0 (VERSYM)                     0x1150e
 0x00000000 (NULL)                       0x0
 ```


 ## ldd

 > ldd /bin/ls 

 ```
	linux-vdso.so.1 (0x7ef9e000)
	/usr/lib/arm-linux-gnueabihf/libarmmem.so (0x76f9f000)
	libselinux.so.1 => /lib/arm-linux-gnueabihf/libselinux.so.1 (0x76f58000)
	libc.so.6 => /lib/arm-linux-gnueabihf/libc.so.6 (0x76e19000)
	/lib/ld-linux-armhf.so.3 (0x76fb5000)
	libpcre.so.3 => /lib/arm-linux-gnueabihf/libpcre.so.3 (0x76da0000)
	libdl.so.2 => /lib/arm-linux-gnueabihf/libdl.so.2 (0x76d8d000)
	libpthread.so.0 => /lib/arm-linux-gnueabihf/libpthread.so.0 (0x76d64000)
```

## alternative command of ldd 

> LD_TRACE_LOADED_OBJECTS=1 /bin/ls

if target file is shared library , not execute.

> LD_TRACE_LOADED_OBJECTS=1  ../hack6/build/libsample_so.so 

```
Segmentation fault
```

execute Runtime-Loader.

> LD_TRACE_LOADED_OBJECTS=1 /lib/ld-linux-armhf.so.3  ../hack6/build/libsample_so.so 

```
        linux-vdso.so.1 (0x7eec3000)
        /usr/lib/arm-linux-gnueabihf/libarmmem.so (0x76f1d000)
        libc.so.6 => /lib/arm-linux-gnueabihf/libc.so.6 (0x76dca000)
        /lib/ld-linux-armhf.so.3 (0x76f45000)

```

EOF

