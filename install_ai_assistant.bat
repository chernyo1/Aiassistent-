@echo off
echo Installing AI Assistant...
echo.

:: Python Install Check
where python >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo Python is not installed. Installing now...
    powershell -Command "& {Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.10.5/python-3.10.5-amd64.exe' -OutFile 'python_installer.exe'}"
    start /wait python_installer.exe /quiet InstallAllUsers=1 PrependPath=1
    del python_installer.exe
)

:: Required Python Libraries Install
pip install speechrecognition pyaudio openai requests

:: AI Assistant Start Command
echo Setup complete! Run 'python ai_assistant.py' to start your AI Assistant.
pause
