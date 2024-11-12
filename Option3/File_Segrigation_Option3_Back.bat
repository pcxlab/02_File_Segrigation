@echo off
setlocal enabledelayedexpansion

:: Define an array of file extensions
set extensions=jpg mp4 csv txt exe pdf

:: Loop through each extension in the array
for %%e in (%extensions%) do (
    if exist %%e\*.%%e (
        move %%e\*.%%e .
    )
    :: Check and remove the folder if empty
    if exist %%e (
        dir /b %%e\* >nul 2>&1
            rmdir %%e
    )
)


