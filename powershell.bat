REM Script:                     Login Retrieval via Powershell  
REM Author:                     Matthew Earles  
REM Date of latest revision:    11/2/2023
REM Purpose:                    Ops 201 Challenge 09


Rem 1: Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt:
Get-WinEvent -LogName System -FilterHashtable @{LogName='System'; StartTime=(Get-Date).AddHours(-24)} | Format-List | Out-File "$env:USERPROFILE\Desktop\last_24.txt"

REM Use reference https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-5.1
REM Example 16 -17 

Rem 2: Output all "error" type events from the System event log to a file on your desktop named errors.txt:
Get-WinEvent -LogName System | Where-Object { $_.LevelDisplayName -eq 'Error' } | Format-List | Out-File "$env:USERPROFILE\Desktop\errors.txt"

REM Use reference https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-5.1:

Rem 3: Print to the screen all events with ID of 16 from the System event log:
Get-WinEvent -LogName System | Where-Object { $_.Id -eq 16 } | Format-Table -AutoSize
REM Use reference https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-5.1:

Rem 4: Print to the screen the most recent 20 entries from the System event log:
Get-WinEvent -LogName System -MaxEvents 20 | Format-Table -AutoSize
REM Use reference https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-5.1:

Rem 5: Print to the screen all sources of the 500 most recent entries in the System event log and ensure that the full lines are displayed:
Get-WinEvent -LogName System -MaxEvents 500 | Format-Table -AutoSize -Wrap
REM Use reference https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent?view=powershell-5.1:
