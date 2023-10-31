#!/bin/bash

# Script:                     More Review Script  
# Author:                     Matthew Earles  
# Date of latest revision:    10/31/2023
# Purpose:                    Ops 201 Challenges Review


# Requirements
# 1.Create a script that detects if a file or directory exists, then creates it if it does not exist.
# 2. Your script must have one array, one loop, and one conditional



# Declare and array - contains list of file

files=(file1.txt file2.txt file3.txt file4.txt)


# Anytime you use an array outside a loop you might want to always use a "For loop"
# For loop - do some action for each file in the list
for file in "${files[@]}"
do

    # CONDITIONAL - Check if file exists
    if [ -f "$file" ]; then 
        # If the file exists then  print out a statement telling the user that the file exists.
        echo "$file exists"
    # Else statement - catch all other situation
    else
        # Tell the user the file doesn't exists
        echo "$file does not exist"
        # Ask the user if they want to create it or simply go ahead and create.
        touch $file
        echo "The $file has been created."
    fi

# Close out our for loop
done








 