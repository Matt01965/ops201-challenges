#!/bin/bash

# Script Name:                  Ops Challenge Class 04
# Author:                       Matthew Earles
# Date of latest revision:      10/26/2023
# Purpose:                      Ops Challenge 03




# Creates four directories: dir1, dir2, dir3, dir4

mkdir dir1 dir2 dir3 dir4

# Declaration of variables and array

directories=("dir1" "dir2" "dir3" "dir4")

# References the array variable to create a new .txt file in each directory




# Main
mkdir ${directories[*]}
touch ~/ops201-challenges/${directories[0]}/text.txt
touch ~/ops201-challenges/${directories[1]}/text.txt
touch ~/ops201-challenges/${directories[2]}/text.txt
touch ~/ops201-challenges/${directories[3]}/text.txt

# End

