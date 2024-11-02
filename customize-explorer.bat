@echo off

:: Set system mode (Windows interface) to Dark
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f

:: Set app mode (applications and settings) to Dark
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f

echo All customizations have been aplied.
pause
