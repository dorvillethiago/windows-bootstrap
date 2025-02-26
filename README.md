## My personal setup for a fresh windows desktop.

### What is needed before following this guide?
- A fresh windows installation.
- A stable internet connection.
- Winget installed on your system.

### How can i make sure that winget is installed on my system?
- Open powershell as an administrator.
- Run the following command:
```powershell
winget
```
- If you see a list of commands, then winget is installed on your system.

### How can i install winget on my system?
- Open powershell as an administrator.
- Run the following command:
```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://winget.run'))
```

### Installing the apps from the apps.json file
- Open powershell as an administrator.
- Run the following command:
```powershell
winget import -i apps.json
```

### Installing JetBrainsMono Nerd Font (The default VSCode font sucks)
- Simply install the fonts from the fonts folder.

### Setting up GlazeWM (That's gonna make windows feel like linux)
You'll need to replace the config in  `C:\Users\<USER>\.glzr\glazewm\config.yaml` with the config in the glazewm folder.
to do that you'll run the following command:
```powershell
cp .\glazewm\config.yaml C:\Users\<USER>\.glzr\glazewm\config.yaml
```

### The aesthetic part
- Log in into your microsoft account and OneDrive
- Set one wallpaper from the wallpapers folder.
- Change your system theme to dark mode.
- Change your accent color to your wallpapers main one.
- Set your taskbar placement to left.
- Set your desktop icons to hidden.
- Remove that terrible copilot icon from your taskbar.
- Remove the news and interests widget from your taskbar.

#### Are you in a laptop? check this little tip out!
On laptop you might want to activate the battery saver mode, and that unfortunatly will remove the blury effect from the taskbar, if you have a darker wallpaper you might wanna use TranslucentTB to make your taskbar fully transparent and keep some visual consistency. 

## Now you're all set! Enjoy your new setup!