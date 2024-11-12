@echo off
:: Define an array of file extensions
set extensions=jpg mp4 csv txt exe pdf

:: Loop through each extension in the array
for %%e in (%extensions%) do (
    :: Create folder for the extension
    mkdir %%e
    :: Move files with the current extension to the folder
    move *.%%e %%e
)

