#!/bin/bash
#script to turn compiling and running C++ into one command
fileName=$1 

g++ $fileName
./$fileName