@echo off
REM Save the current directory
pushd %~dp0

REM Check if Bubbles-Hub.py exists
if not exist Bubbles-Hub.py (
    echo Error: Bubbles-Hub.py not found in the current directory.
    popd
    pause
    exit /b 1
)

REM Run the Python script and check for errors
echo Running Bubbles-Hub.py...
python Bubbles-Hub.py
if %errorlevel% neq 0 (
    echo Error: Bubbles-Hub.py did not run successfully. Error level: %errorlevel%
    popd
    pause
    exit /b %errorlevel%
)

REM Provide success feedback
echo Bubbles-Hub.py ran successfully.

REM Return to the original directory
popd
pause
