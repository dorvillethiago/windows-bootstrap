@echo off

:: Disable minimize/maximize animation
powershell -Command "Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'MinAnimate' -Value 0"

:: Restart Explorer to apply the changes
taskkill /f /im explorer.exe
start explorer.exe

echo All customizations have been aplied.
pause
