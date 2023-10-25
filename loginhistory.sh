#!/bin/bash

# Script:                     Login History  
# Author:                     Matthew Earles  
# Date of latest revision:    10/25/2024  
# Purpose:                    Ops 201 Challenge 02

# Declaration of functions

# Basic function
login_history () {
  last | head -3 # last five logins
  echo This is the login history 
}

# Main
login_history
login_history
login_history


# End