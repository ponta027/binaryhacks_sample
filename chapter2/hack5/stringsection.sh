#!/bin/bash


TARGET_ELF="/bin/ls"
RESULT=`readelf -S ${TARGET_ELF} | grep .shstrtab`
echo ${RESULT}

START=`echo ${RESULT} | awk '{print $5}'`
OFFSET=`echo ${RESULT} | awk '{print $6}'`

od --skip-byte 0x${START} --read-bytes 0x${OFFSET} -t x1z ${TARGET_ELF}
