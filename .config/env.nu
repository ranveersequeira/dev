# PNPM
$env.PNPM_HOME = ($nu.home-path | path join ".local/share/pnpm")
$env.PATH = ($env.PATH | prepend [$env.PNPM_HOME])

# NVM (used only in bash, not set as env var)
let NVM_DIR = ($nu.home-path | path join ".nvm")
# bash -c $"source ($NVM_DIR)/nvm.sh && nvm use"

# Android SDK
$env.ANDROID_HOME = ($nu.home-path | path join "Android/Sdk")
$env.PATH = ($env.PATH | prepend [
  ($env.ANDROID_HOME | path join "platform-tools")
  ($env.ANDROID_HOME | path join "tools/bin")
  ($env.ANDROID_HOME | path join "tools")
  ($env.ANDROID_HOME | path join "emulator")
])

# tmuxifier
$env.PATH = ($env.PATH | prepend [($nu.home-path | path join ".tmuxifier/bin")])

# Console Ninja
$env.PATH = ($env.PATH | prepend [($nu.home-path | path join ".console-ninja/.bin")])

# Volta
$env.VOLTA_HOME = ($nu.home-path | path join ".volta")
$env.PATH = ($env.PATH | prepend [($env.VOLTA_HOME | path join "bin")])
