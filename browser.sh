#!/bin/bash

clear
echo -----------------------------------------------------
echo "You are starting with $# positional parameters"

#HTTP PUT REQUEST
putRequest () {
        if [[ $3 != '/' ]]; then
                if [[ ! -d "server/html"$3 ]]; then
                        mkdir server/html"$3"
                        echo 'PUT operation successful'
                fi
                cp $2 server/html"$3"
        elif [[ $3 == '/' ]]; then
                cp $2 server/html"$3"
                echo 'PUT operation successful'
        fi

}

#HTTP GET REQUEST
getRequest () {
        #Name the HTTP GET Request
        fileStr=HTTP_GET_Request_$(date +%b_%d_%H:%M:%S).http
        #Create an HTTP GET Request
        echo "$1 $2" >> server/port80/$fileStr
        echo 'GET operation successful'
}

#main starts here

#Checking for positional parameters
if [[ $# == 3 ]]; then
#if user enters 3 parameters

        if [[ $1 == 'PUT' ]]; then
				putRequest $1 $2 $3
        else
                echo 'Please use GET or PUT command'
        fi

elif [[ $# == 2 ]]; then
#if user enters 2 parameters

        if [[ $1 == 'GET' ]]; then
                fileExt=$(sed -e 's#.*\.\(\)#\1#' <<< $2);
                if [[ $fileExt == 'html' ]]; then
                        getRequest $1 $2
                else
                        echo 'File should be a html file'
                fi
        else
                echo 'Please use GET or PUT command'
        fi
else
        echo 'Please enter either 2 or 3 parameters'
fi

echo "-------------------------------------------------------------------------"
