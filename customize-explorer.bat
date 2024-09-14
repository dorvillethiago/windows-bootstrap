@echo off

:: Set system mode (Windows interface) to Dark
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f

:: Set app mode (applications and settings) to Dark
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f

:: Enable taskbar auto-hide using PowerShell
powershell -Command "&{$key='HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3'; $bytes=(Get-ItemProperty -Path $key).Settings; $bytes[8]=03; Set-ItemProperty -Path $key -Name Settings -Value $bytes; Stop-Process -f -ProcessName explorer}"

echo All customizations have been aplied.
pause
