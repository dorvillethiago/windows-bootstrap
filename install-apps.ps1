# Check if Scoop is already installed
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "Scoop not found. Installing Scoop..."

    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Invoke-RestMethod -Uri "https://get.scoop.sh" | Invoke-Expression

    Write-Host "Scoop installed successfully!"
} else {
    Write-Host "Scoop is already installed."
}

# Ensure Git is available (required for Scoop to work)
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Git not found. Installing Git via Scoop..."
    scoop install git
    Write-Host "Git installed successfully!"
} else {
    Write-Host "Git is already installed."
}

# Update Scoop
scoop update

# Add necessary buckets
scoop bucket add main
scoop bucket add extras
scoop bucket add nerd-fonts
scoop bucket add nonportable

# List of apps to install (separated by category)
$apps = @(
    # Essential
    "extras/zen-browser",
    "7zip",
    "extras/obsidian",
    "nonportable/parsec-np",

    # Development / SWE
    "main/nvm",
    "main/bun",
    "main/python",
    "extras/cursor",
    "nerd-fonts/JetBrainsMono-NF",
    "main/gh",
    "main/curl",
    "ripgrep",
    "make",
    "main/gcc",
    "fzf",
    "neovim",
    "extras/termius",
    "main/docker",
    "main/docker-compose"
)

# Install apps if they are not already installed
foreach ($app in $apps) {
    $name = $app.Split('/')[-1]  # app name without the bucket
    if (-not (scoop list | Select-String -Pattern $name)) {
        Write-Host "Installing $app..."
        scoop install $app
    } else {
        Write-Host "$app is already installed."
    }
}
