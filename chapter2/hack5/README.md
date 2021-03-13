# readelf code

https://chromium.googlesource.com/native_client/nacl-binutils/+/upstream/master/binutils/readelf.c



# arm32
[arm32_readelf.txt](arm32_readelf.txt)

# arm64
[arm64_readelf.txt](arm64_readelf.txt)

# amd64

[amd64_readelf.txt](amd64_readelf.txt)


# readelf Help 
使用法: readelf <option(s)> elf-file(s)
 ELF 形式のファイルの内容に関する情報を表示します
 Options are:
  -a --all               Equivalent to: -h -l -S -s -r -d -V -A -I
  -h --file-header       Display the ELF file header
  -l --program-headers   Display the program headers
     --segments          An alias for --program-headers
  -S --section-headers   Display the sections' header
     --sections          An alias for --section-headers
  -g --section-groups    Display the section groups
  -t --section-details   Display the section details
  -e --headers           Equivalent to: -h -l -S
  -s --syms              Display the symbol table
     --symbols           An alias for --syms
  --dyn-syms             Display the dynamic symbol table
  -n --notes             Display the core notes (if present)
  -r --relocs            Display the relocations (if present)
  -u --unwind            Display the unwind info (if present)
  -d --dynamic           Display the dynamic section (if present)
  -V --version-info      Display the version sections (if present)
  -A --arch-specific     Display architecture specific information (if any)
  -c --archive-index     Display the symbol/file index in an archive
  -D --use-dynamic       Use the dynamic section info when displaying symbols
  -x --hex-dump=<number|name>
                         Dump the contents of section <number|name> as bytes
  -p --string-dump=<number|name>
                         Dump the contents of section <number|name> as strings
  -R --relocated-dump=<number|name>
                         Dump the contents of section <number|name> as relocated bytes
  -z --decompress        Decompress section before dumping it
  -w[lLiaprmfFsoRt] or
  --debug-dump[=rawline,=decodedline,=info,=abbrev,=pubnames,=aranges,=macro,=frames,
               =frames-interp,=str,=loc,=Ranges,=pubtypes,
               =gdb_index,=trace_info,=trace_abbrev,=trace_aranges,
               =addr,=cu_index]
                         Display the contents of DWARF2 debug sections
  --dwarf-depth=N        N 以上の深さの DIE を表示しない
  --dwarf-start=N        N 以上の深さの DIE を表示する
  -I --histogram         Display histogram of bucket list lengths
  -W --wide              出力幅が 80 文字を超えることを許可する
  @<file>                オプションを <file> から読み込む
  -H --help              この情報を表示する
  -v --version           readelf のバージョン番号を表示する
バグを発見したら <<http://www.sourceware.org/bugzilla/>> に報告して下さい。
翻訳に関するバグは<translation-team-ja@lists.sourceforge.net>に報告してください。





## string section

> ./stringsection.sh

get start address and offset of string section.
read binary data from start address to offset address. 





