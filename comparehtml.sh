#!/bin/bash

clear
echo -----------------------------------------------------
echo "You are starting with $# positional parameters"
echo

#Checking number of parameters
if [[ $# == 2 ]]; then
#if user enter two parameters.
f=$(echo $1 | tr -d '[~!@#$%^&*()\|[]{}]')
s=$(echo $2 | tr -d '[~!@#$%^&*()\|[]{}]')
x=".html"
fir=$(echo $f$x)
sec=$(echo $s$x)

        if [ -f $fir ]; then
        # if there is a file with the given first name
                if [ -f $sec ]; then
                # if there is a file with the given second name
                        diff -y --suppress-common-lines  $fir $sec

                else
                        echo "There is no file with the name $sec."
                fi

        else
                echo "There is no file with the name $fir."
        fi

else
# if user has entered more or less than two parameters

        echo "You should enter exactly two parameters"
fi

echo
echo --------------------------------------------------------
