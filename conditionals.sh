#!/bin/bash

# Script Name:                  Ops Challenge Class 06
# Author:                       Matthew Earles
# Date of latest revision:      10/30/2023
# Purpose:                      Ops Challenge 06

# Create a script that detects if a file or directory exists, then creates it if it does not exist.
# Your script must use at least one array, one loop, and one conditional.

# Declaration of Variablas

# Declaration of variables
create_tests=("test" "test2" "test3" "test4")
# Declaration of functions


#Main
echo "Searching for test directories"

for test in ${create_tests[@]}
    do
        echo "Finding test directory...."
        if [[ $(find ./$test) == ./$test ]]
            then
            echo "Found directory"

            else
            echo "No directory found, creating...."
            mkdir $test
        fi
    done

echo "Process finished"


# End