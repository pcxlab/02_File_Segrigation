@echo off
:: Define an array of file extensions
set extensions=jpg mp4 csv txt exe pdf

:: Loop through each extension in the array
for %%e in (%extensions%) do (
    :: Move files with the current extension from the folder back to the main folder
    move %%e\*.%%e .
    :: Remove the empty folder
    rmdir %%e
)


