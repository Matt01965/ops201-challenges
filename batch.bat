@echo off
REM This line just makes the script look cleaner.

setlocal enabledelayedexpansion
REM If you are using a variable for loops or if blocks this will delay variable expansion.

set /p sourcePath=Enter the source folder path:
REM Enter or tell the source folder path.

set /p destinationPath=Enter the destination folder path:
REM Enter or tell the destination folder path

if not exist "!sourcePath!\" (
    REM Check and see if the source folder doesn't exist.
    echo Error: Source folder does not exist.
    goto :eof
    REM Display the echo error message and then exit the script.
)

if not exist "!destinationPath!\" (
    REM Check and see if the destination folder doesn't exist.
    echo Error: Destination folder does not exist.
    goto :eof
    REM Display the echo error message and then exit the script.
)

robocopy "!sourcePath!" "!destinationPath!" /E
REM Use robocopy to copy files from the source to the destination. Also copy the directories from the source to destination.

if errorlevel 8 (
    REM Make sure to check the error level that was returned by robocopy
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
    REM Displace the success message from echo
)

:end
endlocal
REM Makes it clean up and shutdown the script or exit the script.
