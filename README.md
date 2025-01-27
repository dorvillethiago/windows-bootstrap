**Windows Bootstrap** is a repository containing my essential setup for every Windows device I use. It includes a simple script to install applications via `winget`, along with my preferred fonts.

## Contents

- **install-apps.bat**: A batch script that uses `winget` to automate the installation of applications.
- **customize-explorer.bat**: A batch script that uses powershell and apis to modify the windows theme 
- **fonts/**: A folder with fonts that I frequently use.

## Features

- **Automated Application Installation**: Using the `install-apps.bat` script, you can quickly install all the apps I use on a fresh Windows device with a single command.
- **Automated Explorer Customizations**: using the `customize-explore.bat` script, you can customize the windows theme and taskbar.
- **Favorite Fonts**: Includes the fonts that I find useful for different purposes, from programming to design.

## How to Use

1. **Clone the repository**:
   ```
   git clone https://github.com/dorvillethiago/windows-bootstrap.git
   cd windows-bootstrap
   ```

2. **Run the installer as admin**:
   ```
   install-apps.bat
   ```

3. **Apply fonts**
   - Install the `fonts` from the fonts folder by selecting and right-clicking on them, then choosing "Install".
