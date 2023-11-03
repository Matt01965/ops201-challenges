#!/bin/bash

# Script Name              helloworldtwo.sh
# Author                   Matthew Earles
# Date of Last Revision    11/3/2023
# Purpose                  Print out User Details and environmental variables 


# Declaration of Variables
greeting='hello world'
status='system load'
now=`date`
one='1'
int_1=1
int_2=2

# Declaration of Functions
hello_world() { 
    echo $greeting
}

system_load() {
    echo $status
    time_stamp
}

time_stamp() {
    echo $now
}

# Main
hello_world
system_load
echo $(($int_1 + $int_2))
echo $(($one + $int_2))

# End 