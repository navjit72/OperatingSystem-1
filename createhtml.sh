#!/bin/bash

clear
echo -----------------------------------------------------
echo "You are starting with $# positional parameters"
echo

#Checking number of parameters
if [[ $# == 1 ]]; then
#if user enter one parameter.

#Converting the name to lowercase and removing digits
s=$(echo $1 | tr "[:upper:]" "[:lower:]" | tr -d "[:digit:]")
y=".html"
var=$s$y

if [ ! -f $var ]; then
# if there is no such file with the same name

        touch $var
        echo "<!Doctype html>" >> $var
        echo "<html>" >> $var
        echo "<head>" >> $var
        echo "<title>Page Title</title>" >> $var
        echo "</head>" >> $var
        echo "<body>" >> $var
        echo " " >> $var
        echo "<h1>My First Heading</h1>" >> $var
        echo "<p>My First Paragraph.</p>" >> $var
        echo " " >> $var
        echo "</body>" >> $var
        echo "</html>" >> $var
        echo "Created $var file, with the scaffolding content."

else
        echo "File $var already exists"
fi

else
# if user has entered more or less than one parameter

        echo "You should enter exactly one parameter"
fi

echo
echo --------------------------------------------------------
