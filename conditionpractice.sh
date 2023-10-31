#!/bin/bash

# Script Name:                  Ops Challenge Class 06
# Author:                       Matthew Earles
# Date of latest revision:      10/26/2023
# Purpose:                      Ops Challenge 06

# Array to store the grocery list

grocery_list=("apples" "milk" "bread" "monster")


# Function that is going to check if an item is in the grocery list

grocery_list_checker() {
    # Item I am looking for in my list
    seach_item="$1"

    # For loop to go over each item in the list
    for item in "${grocery_list[*]}"; do
        # Check if the item I am lookin for is in my list or not
        if [ "$item" == "$search_item" ]; then
            return 0 # If a computer returns 0 = success
            echo "The item is in your grocery list!"
        fi
    done
    return 1 # If a computer returns 1 = False 


}

# Main 

# While Loop
# This while loop is going to repeadedly ask the user for items to check
while true; 
do 
    # Ask the user for input of an item to look for in the list
    read -p "Enter an item to check if it's on your grocery list (Type done to exit.)" item_to_check

    # Check if the users input is done
    if [ "$item_to_check" == "done" ]; then
        break # Exit the loop
    fi

    # Check if the item is in the grocery list - Call the function
    if grocery_list_checker "$item_to_check"; then
        echo "Item '$item_to_check' is already on your grocery list."
    else 
        # If the item is not on the list, ask the user if they want to add it
        read -p "'$item_to_check' is not on your list do you want to add it? (yes/no)" add_to_list
        if [ "$add_to_list" == "yes" ]; then
            # This adds the new item to our grocery list
            grocery_list+=("$item_to_check")
            echo "'$item_to_check' was added to your list."
        else
            echo "'$item_to_check' was not added to your list."
        fi
    fi
done

# Ask the user if they are ready to see their completed grocery list.

read -p "are you ready to see your complete grocery list? (yes/no)" show_list

if [ "$show_list" == "yes"]; then
    echo "your completed grocery list:"
    echo "${grocery_list[*]}"
else 
    echo "Ok, you can check your list later."
fi

# End