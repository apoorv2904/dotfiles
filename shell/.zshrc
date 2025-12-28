# ==============================================================================
#  ZSH CONFIGURATION
# ==============================================================================

# --- VIM MODE & KEYBINDINGS ---
# Enable Vi mode
bindkey -v

# Map 'jk' to escape (Enter Normal Mode)
bindkey -M viins 'jk' vi-cmd-mode

# Remove the lag when hitting 'j' (wait only 0.01s for sequence completion)
export KEYTIMEOUT=10

# Disable the annoying system beep/bell
unsetopt beep

# --- ENVIRONMENT VARIABLES ---
# Set Vim as the default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Add standard paths (often needed on macOS for Homebrew/local bins)
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH"

# --- HISTORY CONFIGURATION ---
HISTFILE=~/.zsh_history
HISTSIZE=10000       # How many lines to keep in memory
SAVEHIST=10000       # How many lines to save to disk

# Append history immediately (don't wait for shell exit)
setopt APPEND_HISTORY
# Share history across all open terminal tabs/windows
setopt SHARE_HISTORY
# Ignore duplicate commands
setopt HIST_IGNORE_DUPS
# Ignore commands starting with space (useful for secrets)
setopt HIST_IGNORE_SPACE

# --- NAVIGATION & COMPLETION ---
# Change directory without typing 'cd' (just type the dir name)
setopt AUTO_CD

# Case-insensitive tab completion (e.g., 'cd doc' -> 'cd Documents')
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Enable colored output for ls (G=color, F=filetype classification)
alias ls='ls -GF'

# --- ALIASES ---
alias gsu="git status -uno"
alias ll="ls -lh"   # List with details and human-readable sizes
alias la="ls -A"    # List all including hidden files
alias ..="cd .."
alias ...="cd ../.."

# --- FUNCTIONS ---

# Diff two sorted files
# Usage: diffs file1 file2 [flags]
function diffs() {
    diff "${@[3,-1]}" <(sort "$1") <(sort "$2")
}

# Create a directory and cd into it immediately
function mkcd() {
    mkdir -p "$1" && cd "$1"
}

# ==============================================================================
#  PROMPT CUSTOMIZATION (Optional but Recommended)
# ==============================================================================
# A simple prompt: [username directory] %
# %n = username, %~ = current dir (with ~), %# = % for user / # for root
PROMPT='[%n %~] %# '

# ==============================================================================
#  MAC KEYBOARD SETUP UTILITY
#  Usage: Run 'setup_mac_keyboard' in terminal once to apply
# ==============================================================================
function setup_mac_keyboard() {
    echo "⚙️  Optimizing macOS keyboard settings for Vim..."

    # 1. Disable the "Press and Hold" menu in VS Code (enables key repeat)
    defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

    # 2. Disable "Press and Hold" globally (optional, good for other apps)
    defaults write -g ApplePressAndHoldEnabled -bool false

    # 3. Set Key Repeat Rate (How fast it repeats after the start)
    # 2 = 30ms (Very fast). Normal maximum in System Settings is 2.
    defaults write -g KeyRepeat -int 2

    # 4. Set Initial Delay (How long to wait before repeating starts)
    # 15 = 225ms. Normal shortest in System Settings is 15.
    defaults write -g InitialKeyRepeat -int 15

    defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false              # For VS Code
    defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false      # For VS Code Insider
    defaults write com.vscodium ApplePressAndHoldEnabled -bool false                      # For VS Codium
    defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false   # For VS Codium Exploration users
    defaults write com.exafunction.windsurf ApplePressAndHoldEnabled -bool false          # For Windsurf
    defaults delete -g ApplePressAndHoldEnabled                                           # If necessary, reset global default

    echo "✅ Settings applied!"
    echo "   - Restart VS Code for the repeat fix."
    echo "   - You may need to log out/in for global speed changes."
}

# ==============================================================================
#  MAC KEYBOARD SETUP UTILITY
#  Usage: Run 'setup_mac_keyboard' in terminal once to apply
# ==============================================================================
function setup_mac_fbkeyboard() {
    echo "⚙️  Optimizing macOS keyboard settings for Vim..."

    # --- 1. Disable "Press and Hold" for specific App IDs ---

    # Your Company Build
    defaults write com.facebook.fbvscode ApplePressAndHoldEnabled -bool false

    # Standard VS Code
    defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

    # VS Code Insiders (Green icon)
    defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false

    # VSCodium (Open Source)
    defaults write com.vscodium ApplePressAndHoldEnabled -bool false

    # VS Code Exploration
    defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false

    # Windsurf (AI Editor)
    defaults write com.exafunction.windsurf ApplePressAndHoldEnabled -bool false

    # --- 2. Global Setting (The "Nuclear" Option) ---
    # Force PressAndHold OFF globally for all apps (Terminal, Chrome, etc.)
    defaults write -g ApplePressAndHoldEnabled -bool false

    # --- 3. Keyboard Speed Settings ---
    # KeyRepeat: 2 = 30ms (Fastest UI setting is 2)
    defaults write -g KeyRepeat -int 2

    # InitialKeyRepeat: 15 = 225ms (Shortest UI setting is 15)
    defaults write -g InitialKeyRepeat -int 15

    echo "✅ Settings applied to all VS Code variants and System-wide!"
    echo "   - Restart VS Code (Cmd+Q) for the repeat fix to take effect."
    echo "   - You may need to log out/in for global speed changes."
}
