#!/bin/bash

# Script:                     Login Retrieval via Powershell  
# Author:                     Matthew Earles  
# Date of latest revision:    11/2/2023
# Purpose:                    Ops 201 Challenge 09


# Create a Powershell script that performs these operations on separate lines. The overall script is not designed to operate holistically, but rather act as a reference for how to execute various interesting operations with the process family of Powershell commandlets. Clearly indicate with comments each component below.
# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
# Output all "error" type events from the System event log to a file on your desktop named errors.txt.
# Print to the screen all events with ID of 16 from the System event log.
# Print to the screen the most recent 20 entries from the System event log.'
# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the ... and show the entire text).



# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-WinEvent -LogName System -FilterHashtable @{LogName='System'; StartTime=(Get-Date).AddHours(-24)} | Format-List | Out-File "$env:USERPROFILE\Desktop\last_24.txt"

# Use reference https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-5.1
# Example 16 -17 

# Output all "error" type events from the System event log to a file on your desktop named errors.txt.
Get-WinEvent -LogName System | Where-Object { $_.LevelDisplayName -eq 'Error' } | Format-List | Out-File "$env:USERPROFILE\Desktop\errors.txt"

# Use reference https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-5.1


# Print to the screen all events with ID of 16 from the System event log.
Get-WinEvent -LogName System | Where-Object { $_.Id -eq 16 } | Format-Table -AutoSize 

# Use reference https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-5.1

# Print to the screen the most recent 20 entries from the System event log.'
Get-WinEvent -LogName System -MaxEvents 20 | Format-Table -AutoSize

# Use reference https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-5.1

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the ... and show the entire text).
Get-WinEvent -LogName System -MaxEvents 500 | Format-Table -AutoSize -Wrap

# Use reference https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-5.1