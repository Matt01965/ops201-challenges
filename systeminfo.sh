#!/bin/bash

# Script:                     System Info Challenge  
# Author:                     Matthew Earles  
# Date of latest revision:    10/31/2023
# Purpose:                    Ops 201 Challenges 07


# Create a script that uses "lshw" to display system information to the screen about the following components. Check Challenge page.
# Uses grep to remove irrelevant information from the lshw output
# Add text to the output clearly indicating which component (such as CPU, RAM, etc.) the script is returning information about.
# Runs as Root; you may execute the shell script with sudo or as Root.

# Declaration of variables
lshw_out=$(lshw)

# Declaration of functions
display_info() {
    component="$1"
    echo "Computer Name: $lshw_out" | head -n 1
    echo "=================================================="
    echo "~~~~~~~~~~~~~ $component Information ~~~~~~~~~~~~~"
    if [ "$component" == "CPU" ]; then
        echo "$lshw_out" | grep -A 5 "$component" | grep -E "product:|vendor:|physical id:|bus info:|width:"
    elif [ "$component" == "System Memory" ]; then
        echo "$lshw_out" | grep -A 3 "$component" | grep -E "description:|physical id:|size:"
    elif [ "$component" == "display" ]; then
        echo "$lshw_out" | grep -A 12 "$component" | grep -E "description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:"
    elif [ "$component" == "network" ]; then
        echo "$lshw_out" | grep -A 17 "$component" | grep -E "description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|clock:|capabilities:|configuration:|resources:"
    else 
        echo ""
    fi
}
# Main
# Checks if script is running in root
if [ "$EUID" -ne 1 ]; then
    echo "you may continue"
    sleep 2
else
    echo "Please run this script as root using sudo."
    exit 1
fi

# Display information for each of these components
display_info "CPU"
sleep 3
display_info "System Memory"
sleep 3
display_info "display"
sleep 3
display_info "network"

# This is my second attempt I was told to resubmit I had to try to approach this in a different manner I hope this is okay!
# Please let me know if I need to futher edit this I do not mind at all!
# I also had to use more chat GPT and google sadly because I was still confused with some parts.

exit 0