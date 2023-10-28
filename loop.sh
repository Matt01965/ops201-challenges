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

while true; do
  # display running processes
  echo "Running PING processes:"t
  ps aux | grep [p]ing 

  # ask user for PID
  read -p "Enter PID to kill (Ctrl + C to exit): " pid

  # check if input is empty
  if [ -z "$pid" ]; then
    echo "No PID entered. Enter valid PID."
  else
# check if PID is valid
    if ps -p "$pid" > /dev/null; then
      #  kill process
      kill "$pid"
      echo "Killed process with PID: $pid"
    else
      echo "No mathing process to $pid."
    fi
  fi
done