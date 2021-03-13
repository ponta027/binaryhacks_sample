#!/bin/bash

function doReadElf()
{
        echo "## ELF Header" >> $1
        readelf -h helloworld           >> $1
        echo "## Program Header" >> $1
        readelf -l helloworld           >> $1
        echo "## Section Header" >> $1
        readelf -S helloworld           >> $1
        echo "## symbol table" >> $1
        readelf -s helloworld           >> $1

}
go build helloworld.go 
doReadElf "arm32_readelf.txt"

GOOS=linux GOARCH=amd64 go build helloworld.go 
doReadElf "amd64_readelf.txt"

GOOS=linux GOARCH=arm64 go build helloworld.go 
doReadElf "arm64_readelf.txt"



