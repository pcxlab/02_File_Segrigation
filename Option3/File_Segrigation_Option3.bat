@echo off
setlocal enabledelayedexpansion

:: Define an array of file extensions
set extensions=jpg mp4 csv txt exe pdf

:: Loop through each extension in the array
for %%e in (%extensions%) do (
    if exist *.%%e (
        mkdir %%e 2>nul
        move *.%%e %%e
    )
)

