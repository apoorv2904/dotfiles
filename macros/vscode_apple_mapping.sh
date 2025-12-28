#!/bin/bash
function setup_mac_fbkeyboard() {
    echo "⚙️  Optimizing macOS keyboard settings for Vim..."
    # --- 1. Disable "Press and Hold" for specific App IDs ---
    # FB Build
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
