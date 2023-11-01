@echo off 
Rem this makes it so the commands to get echoed into the command line 
setlocal enabledelayedexpansion 
Rem this is setting delayed expansion on, which allows variables to be read at execution time instead of when it is parsed, setlocal tells the script to only use variables set in the script

set /p sourcePath=Enter the source folder path: 
Rem this line prompts the user to type the folder that is being copied

set /p destinationPath=Enter the destination folder path: 
Rem this line prompts the user where to place the copy

if not exist "!sourcePath!\" ( 
    echo Error: Source folder does not exist.
    goto :eof Rem goes to the end of the file
)
Rem this is an if statement saying that if the source path does not exist, give an error

if not exist "!destinationPath!\" ( 
Rem this if statement is the same but with the destination folder
    echo Error: Destination folder does not exist.
    goto :eof
)

robocopy "!sourcePath!" "!destinationPath!" /E Rem executes robocopy using the source and copy it to the destination, the /E switch makes it also include subdirectories even when they are empty

if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation. 
Rem this gets printed to the command line if robocopy experiences an error
) else (
    echo Copy operation completed successfully. 
Rem otherwise, it completes the copy
)

:end 
Rem end the batch script
endlocal 
Rem stop using variables at the start of setlocal
