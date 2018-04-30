#!/bin/bash

clear
echo -----------------------------------------------------
echo "You are starting with $# positional parameters"
echo

if [[ $# == 1 ]]; then
#if user enter one parameter
s=$(echo $1 | tr '~!@#$%^&*()[]{}\|' '_')
# Converting non alpha-numeric characters to underscore
        x=".html"
        y=$s$x
        z=$(echo $y)
        p=$(pwd)
        if [ -e "$y" ]; then
        # if file exist
                echo "Total Lines: " $(wc -l $y | tr -d 'index.html')
                echo "Total Words: " $(wc -w $y | tr -d 'index.html')
                echo "Total Characters: " $(wc -m $y | tr -d 'index.html')
                echo "File $y analyzed in $p."
        else
        # if file does not exist
                echo "The file $z does not exist."
        fi

else
#if user has entered more than or less than one parameter.

        echo 'You should have exactly one parameter'

fi

echo
echo --------------------------------------------------------
