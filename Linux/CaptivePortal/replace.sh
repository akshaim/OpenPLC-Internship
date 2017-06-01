#!/bin/bash
#Script to replace strings in a specific line of a text file
#initialising variables
line_number=$2
substring=$3
replace_string=$4
replaced_string=''
line_string=''
    #Take out the line that needs to be replaced and store it in variable line_string
    line_string=$(sed -n "$line_number p" $1)
    #Keep replacing the string in the line till all the instances are replaced and increment the count everytime
    while [ $(echo $line_string | grep -c "$substring") -eq 1 ];do
	line_string=$(echo $line_string | sed "s/$substring/$replace_string/")
    done
    #Replace the line in the given file with the replaced string
    sed -i "$line_number s|.*|$line_string|" $1


