#!/bin/bash

function staticLink(){
  cc -c -o foo.o foo.c
  cc -c -o bar.o bar.c

}


staticLink 
