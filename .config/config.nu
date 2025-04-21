# config.nu
#
# Installed by:
# version = "0.103.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See help config nu for more options
#
# You can remove these comments if you want or leave
# them for future reference.
#


# Aliases
alias std = sudo shutdown now
alias rb = sudo reboot now
alias re = do { npm run android; npm run start }
alias rmb = npm run android:build-apk
alias gg = lazygit
alias gp = git pull
alias gcb = git checkout
alias gnb = git checkout -b
alias nr = npm run
alias gpd = git pull origin development
alias rnt = detox test -c android.emu.debug

# Optional prompt customization
# let-env PROMPT_COMMAND = { || $"(whoami)@($hostname):($env.PWD) > " }

# If you ever want to eval tmuxifier init (if compatible with Nu):
# source ~/.tmuxifier/init.nu  # only if you create/init such a file
$env.config.show_banner = false
