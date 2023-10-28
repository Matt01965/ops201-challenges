#!/bin/bash

# Script Name:                  Ops Challenge Practice
# Author:                       Matthew Earles
# Date of latest revision:      10/26/2023
# Purpose:                      Practice Variables and Functions

# Declaration of variables
PRICE_PER_APPLES=5


# Define Array
grocery_list=(apple bananas orange onion)


# print out the entire grocery list

echo ${grocery_list[*]}

# ******* FUNDEMENTAL IDEA ******
# Print out the first item of the list

echo ${grocery_list[0]}

# Append a new item to the list
new_snack=monster
grocery_list+=($new_snack)
echo ${grocery_list[*]}

# Prints out the total number of items on the list
# Adding the pound sign in front of the array name gives me the count of the items in my list
echo ${#grocery_list[*]}


# Add monster as the second item on the list
grocery_list[1]=$new_snack
echo ${grocery_list[*]}

# Prints out the last item of the list
echo ${grocery_list[${#grocery_list[*]}-1]}
