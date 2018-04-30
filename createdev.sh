#!/bin/bash

clear
echo -----------------------------------------------------
echo "You are starting with $# positional parameters"
echo

#Checking number of parameters
if [[ $# == 1 ]]; then
#if user enter one parameter.

#Converting the name to lowercase
s=$(echo "$1" | tr "[:upper:]" "[:lower:]")

if [ ! -d "$s" ]; then
# if there is no such folder with the same name

        mkdir $s
        echo "Creating folder $s - completed"
        cd $s

        if [ ! -d "archive" ]; then
        # if there is no archive folder inside the folder

                mkdir archive
                echo "Creating folder $s/archive - completed"
        else
                echo "Folder archive already exists"

        fi

else
        echo "Folder $s already exists"
        cd $s
        if [ ! -d "archive" ]; then
        # if there is no archive folder inside the folder

                mkdir archive
                echo "Creating folder $s/archive - completed"
		else
                echo "Folder archive already exists"

        fi
fi

	else
	# if Folder already exists
        echo "Folder $s already exists"

	fi

else
# if user has entered more or less than one parameter

        echo "You should enter exactly one parameter"
fi

echo
echo --------------------------------------------------------
