#!/bin/bash

# Script:                     Loop   
# Author:                     Matthew Earles  
# Date of latest revision:    10/27/2024  
# Purpose:                    Ops 201 Challenge 05

# Write a script: 
# That displays the running processes 
# Asks the user for a PID
# Kills the process with that PID
# Starts over at step 1 and continues until the user exits with `Ctrl + C`

# This is a bit different then tha actual lecture process, it is a bit more technical. Thank you, Google. Also huge shotout to Andrew and Cody from the class!

# Declare Variables

option="y"


# Main


# While Loop
while [ $option == "y" ]; do
    # instructions for the while loop to execute
    # This command prints out all running processes to the screen
    ps aux 

    # Ask tge user for a Process ID 
    echo -e "\nPlease give the PID of the process you would like to kill:"

    # Read in the input the user provided and put it in a variable called pid

    read pid

    # Kill the process using the pid the user gave us

    kill -9 $pid

    # Ask the user if they want to kill another process or exut the script

    echo -e "\nDo you want to kill another process? (y to continue / and other key to stop)"

    # Read in the inputer the user provided and put it in a variable called option
    read option

done   