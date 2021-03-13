#!/bin/bash

gcc  -o hello helloworld.c
#gcc -g -o hello helloworld.c

echo "# Object dump Section"
echo '```'
objdump -s hello
echo '```'

echo "# List object format and architectures supported"
echo '```'
objdump -i hello
echo '```'

echo "# specfied section"
echo '```'
objdump -s -j .interp hello
echo '```'

echo "# section headers"
echo '```'
objdump -h hello 
echo '```'

RESULT=`objdump -h hello | grep interp`
SIZE=`echo ${RESULT} | awk '{print $3}'`
OFFSET=`echo ${RESULT} | awk '{print $4}'`

echo "# dump address range"

echo '```'
objdump -s --start-address=0x${OFFSET} --stop-address=$((0x${OFFSET}+0x${SIZE}))  hello
echo '```'


echo "# binary dump"
echo '```'
objdump -s -b binary hello
echo '```'



