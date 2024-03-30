
#!/bin/bash

# Move folders to ~/.config/
mv -f /lvim ~/.config/
mv -f /regolith3 ~/.config/
mv -f /wezterm ~/.config/

# Move .zshrc and .bashrc files
mv -f ~/.zshrc ~/.zshrc.backup # Backup existing .zshrc if present
mv -f ~/.bashrc ~/.bashrc.backup # Backup existing .bashrc if present
mv -f .zshrc ~/.zshrc
mv -f .bashrc ~/.bashrc

echo "Folders and files moved successfully!"
