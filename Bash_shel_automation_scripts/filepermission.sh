#!/bin/bash
# Automates file permission for the current user to read, write, and execute
read -p "Enter the Filename:-" File
echo "The filename is $File"
search_dir= "/"
found=$(find $search_dir -type f -name "$File")
if [ -z "$File" ]
then
        echo "The File $File is not found"
else
        for File in $found
        do
                chmod u+rwx "$File"
                echo "permission rwx is given for $File"
        done
fi

