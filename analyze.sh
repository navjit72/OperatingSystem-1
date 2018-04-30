#!/bin/bash

clear
echo -----------------------------------------------------
echo "You are starting with $# positional parameters"
echo

# Get the file type of the argument 1 which is the filename
s=$(file "$1")

if [[ $# == 2 ]]; then
#if user enter two parameters.

# Check if the file type is a text file
if [[ $s = *"text"* ]]; then

# if the file is a text file
        echo "Total number of words in that file" $(wc -w $1)
        echo "Total number of bytes in that file" $(wc -c $1)
        echo "Number of times $2 has occurred in the file" $(grep -c "$2" $1)
        echo "The lines in the file $1 where the word $2 occurs" $(grep -wi "$2" $1)
        $(grep -w "$2" $1 > intermediate.txt && uniq -d intermediate.txt > duplicates.sh)
else

# if file is not a text file
        echo 'File is not a text file'
fi

else

#if user has entered more than or less than 2 parameters.
        echo 'You should have exactly two parameters'

fi

echo --------------------------------------------------------
