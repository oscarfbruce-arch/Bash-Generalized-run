#!/bin/bash
#Compiles and then runs C++, Java or bash files. Resets the color in case of overflow
RESETTEXT="\e[0m" #reset text color
RESETBACK='\033[0m' #reset background color

file=$1

if [[ $file =~ \.cpp$ ]]; do
	g++ ${file}
	./a.out
elif [[ $file =~ \.java$ ]]; then
	javac ${file}
    java ${file}
elif [[ $file =~ \.sh$ ]]; then
	./${file}
elif [[ $file =~ \.py$ ]]; then
	python ${file}
else
	printf "file type not .cpp, .js or .sh
fi

printf "${RESETEXT}${RESETBACK}"