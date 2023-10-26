#!/bin/bash

# Script Name:                  Ops Challenge Practice
# Author:                       Matthew Earles
# Date of latest revision:      10/26/2023
# Purpose:                      Practice Variables and Functions

# Declaration of variables
PRICE_PER_APPLES=5


# Define Array
grocery_list=(apple bananas orange onion)


# print out the entire grocery lsit
# echo ${grocery_list[*]}

# ******* FUNDEMENTAL IDEA ******
# Print out the first item of the list

echo ${grocery_list[1]}

# Append a new item to the list
new_snack=monster
grocery_list+=monster