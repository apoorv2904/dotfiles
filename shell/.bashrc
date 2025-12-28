# Alias tmux command
export TMUX_TMPDIR=/home/vyasapoorv/tmux
alias tmux="TERM=screen-256color tmux"
alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tl="tmux list-sessions"


bind 'set bell-style none'

alias treset="stty sane"


# ==============================================================================
#  REMOTE BASH CONFIGURATION
# ==============================================================================

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# --- VIM MODE & KEYBINDINGS ---
# Enable Vi mode
set -o vi

# Map 'jk' to escape (Enter Normal Mode)
bind '"jk":vi-movement-mode'

# --- HISTORY CONFIGURATION ---
# Append to the history file, don't overwrite it
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000
# Ignore duplicate commands and commands starting with space
export HISTCONTROL=ignoreboth

# --- ENVIRONMENT VARIABLES ---
export VISUAL=vim
export EDITOR="$VISUAL"

# --- ALIASES ---
alias gsu="git status -uno"
alias ..="cd .."
alias ...="cd ../.."

# Linux specific: use --color=auto (Mac uses -G)
alias ls='ls --color=auto'
alias ll='ls -alh --color=auto'
alias grep='grep --color=auto'

# --- FUNCTIONS ---

# Diff two sorted files (Bash array slicing syntax)
function diffs() {
    diff "${@:3}" <(sort "$1") <(sort "$2")
}

# Create a directory and cd into it
function mkcd() {
    mkdir -p "$1" && cd "$1"
}

# --- PROMPT CUSTOMIZATION ---
# A nice colored prompt: [user@host directory] $
# \u=user, \h=host, \w=working dir
PS1='\[\033[01;32m\][\u@\h \w]\[\033[00m\] \$ '

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
