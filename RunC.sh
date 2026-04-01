#!/bin/bash
# Compiles and then runs C++, Java or bash files. Resets the color in case of overflow
# requires open-jtk and gcc
RESETTEXT="\e[0m" #reset text color
RESETBACK="\033[0m" #reset background color



file=$1


if [[ $file =~ \.cpp$ ]]; then
	g++ ${file}
	./a.out
elif [[ $file =~ \.java$ ]]; then
	javac ${file}
	cleanFile=$(basename ${file} .java)
	fileDir=$(dirname ${file})
	java -cp "$fileDir" $cleanFile
elif [[ $file =~ \.sh$ ]]; then
	bash ${file}
elif [[ $file =~ \.py$ ]]; then
	python ${file}

else
	echo "file type not .cpp, .js or .sh"
fi

# echo "${RESETEXT}${RESETBACK}"