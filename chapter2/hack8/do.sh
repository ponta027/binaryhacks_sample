#!/bin/bash

gcc -g -o hello helloworld.c
readelf -w hello 
