```markdown
# ⚡️ Developer Dotfiles & Setup

Configuration for a **Vim-centric** development environment on macOS, focusing on VS Code, Zsh, and Python/Bash development.

## 📂 Repository Structure

```text
dotfiles/
├── README.md                   # This guide
│
├── macos/
│   └── vscode_apple_mapping.sh # Script to fix Mac keyboard repeat speeds
│
├── tips/
│   └── vscode_vim.md           # Cheat sheet for shortcuts & debugging
│
├── shell/
│   └── .zshrc                  # Mac Shell configuration (Includes setup_mac_fbkeyboard)
│   └── .bashrc                 # Remote/Linux Shell configuration
│
├── vim/
│   ├── .vimrczsh               # Vim config for Local (Mac/Zsh)
│   ├── .vimrcbassh             # Vim config for Remote (Linux/Bash)
│   └── colors/
│       └── dusk.vim            # Custom color theme
│
└── vscode/
    ├── settings.json           # Core VS Code preferences (Vim strategy, UI)
    └── keybindings.json        # Global shortcuts (CMD+J/K navigation)

```

---

## 🛠 Step 1: Prerequisites

1. **Install iTerm2** (Recommended over default Terminal)
2. **Install VS Code**
3. **Install a Nerd Font** (Optional, for icons)
* [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads)



---

## 🐚 Step 2: Terminal Setup (Local Mac)

Create symlinks manually so changes in your repo reflect immediately on your system.

### 1. Link Zsh Config (Mac)

```zsh
# Backup existing config
mv ~/.zshrc ~/.zshrc.backup 2>/dev/null

# Link new config from shell/ folder
ln -s ~/dotfiles/shell/.zshrc ~/.zshrc

```

### 2. Link Vim Config & Theme (Mac)

```zsh
# Link the Zsh version of vimrc to your home .vimrc
ln -s ~/dotfiles/vim/.vimrczsh ~/.vimrc

# Install the Theme
mkdir -p ~/.vim/colors
ln -s ~/dotfiles/vim/colors/dusk.vim ~/.vim/colors/dusk.vim

```

*(Note: On your remote Linux machines, you would link `shell/.bashrc` and `vim/.vimrcbassh` instead.)*

---

## 🍎 Step 3: macOS System Prep

For Vim to feel good on macOS, we must disable the "Press and Hold" accent menu and maximize keyboard repeat speed.

**Note:** This relies on the `setup_mac_fbkeyboard` or `setup_mac_keyboard` (depending on vscode version) function defined in your new `.zshrc`.

1. Open a **new** Terminal window (to load the newly linked `.zshrc`).
2. Run the setup function:
```zsh
setup_mac_fbkeyboard # (or setup_mac_keyboard)
```


3. **Restart your computer** (or log out/in) for these changes to take full effect.

---

## 💙 Step 4: VS Code Setup

### 1. Install Extensions

Run the following command in your terminal to install all required extensions at once:

```zsh
code --install-extension vscodevim.vim              # Vim Emulation
code --install-extension ms-vscode-remote.remote-ssh # Remote Development
code --install-extension ms-python.python           # Python IntelliSense
code --install-extension ms-python.vscode-pylance   # Python Language Server
code --install-extension mrcrowl.hg                 # Mercurial (Hg) Support
code --install-extension timonwong.shellcheck       # Bash Linting
code --install-extension enkia.tokyo-night          # Color Theme
code --install-extension PKief.material-icon-theme  # File Icons

```

### 2. Apply Settings (`settings.json`)

This file controls the Vim strategy, UI appearance, and formatting rules.

**Note: For the custom VS code (at different location), you may want to manually copy over the settings and keybindings and append to the default settings.**

* **Location:** `~/Library/Application Support/Code/User/settings.json`
* **Action:** Copy the content from `vscode/settings.json` into the file above.
* **Or Symlink (Advanced):**
```zsh
ln -sf ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

```



### 3. Apply Keybindings (`keybindings.json`)

This file controls global shortcuts (like `Cmd+j` to focus terminal) that `settings.json` cannot handle.

**Note: For the custom VS code (at different location), you may want to manually copy over the settings and keybindings and append to the default settings.**

* **Location:** `~/Library/Application Support/Code/User/keybindings.json`
* **Action:** Copy the content from `vscode/keybindings.json` into the file above.

---

## 🚀 Usage Guide

### Vim Leader Key: `Space`

| Key | Action |
| --- | --- |
| `Space` `f` | **Fuzzy Find File** (Quick Open) |
| `Space` `e` | Toggle Sidebar |
| `Space` `;` | **Command Palette** |
| `Space` `w` | Save |
| `Space` `z` | Toggle Zen Mode |
| `g` `p` | Previous Tab |
| `g` `n` | Next Tab |

### Global Navigation

| Key | Action |
| --- | --- |
| `Cmd` + `j` | Focus Terminal (Go Down) |
| `Ctrl` + `k` | Focus Code Editor (Go Up) |

---

## 🔄 Maintenance

**To update your settings:**

1. Edit the files inside the `~/dotfiles` folder.
2. Commit and push changes to GitHub.
3. On a new machine, just `git clone` this repo and repeat the linking steps.

```
