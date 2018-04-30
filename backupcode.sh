#!/bin/bash

clear
echo -----------------------------------------------------
echo "You are starting with $# positional parameters"
echo

#Checking number of parameters
if [[ $# == 2 ]]; then
#if user enter two parameters.
fir=$(echo $1 | tr -d '[.,]')
sec=$(echo $2 | tr -d '[.,]')

        if [ -d $sec ]; then
        # if there is a folder with the given name

                x="*."
                y=$x$fir
                count=0

                for f in $y; do
                # For all the files in the directory with given extension

                        if [[ -e $f ]]; then
                        # if the file actually exists
                                let count++
                                cp $f $sec
                        fi
                done

                if [ $count == 0 ]; then
                # if no files were found in the directory of given extension
                        echo "There are no files with $fir extension."
                else
                # if files were found and copied to the specified folder
                        echo "Files successfully copied to $sec"
                fi

        else
                echo "Folder $sec does not exist."
        fi

else
# if user has entered more or less than two parameters

        echo "You should enter exactly two parameters"
fi

echo
echo --------------------------------------------------------


