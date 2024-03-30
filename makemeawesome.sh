
#!/bin/bash

# Function to create backup of a folder
backup_folder() {
    if [ -d "$1" ]; then
        mv -v "$1" "$1.backup"
    else
      echo "Error: $1 not found"
    fi
}

# Function to move folders with merging contents
move_folder() {
    mv -vT "$1" "$2"
}

# Backup existing folders
backup_folder ~/.config/lvim
backup_folder ~/.config/regolith3
backup_folder ~/.config/wezterm

# Delete existing folders
rm -rf ~/.config/lvim
rm -rf ~/.config/regolith3
rm -rf ~/.config/wezterm

# Move new folders
move_folder lvim ~/.config/lvim
move_folder regolith3 ~/.config/regolith3
move_folder wezterm ~/.config/wezterm

# Move .zshrc and .bashrc files if they exist
if [ -f ".zshrc" ]; then
    mv -vf .zshrc ~/.zshrc
else
    echo "Error: .zshrc file not found."
fi

if [ -f ".bashrc" ]; then
    mv -vf .bashrc ~/.bashrc
else
    echo "Error: .bashrc file not found."
fi

echo "Folders and files moved successfully!"

