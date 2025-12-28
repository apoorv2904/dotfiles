# VS Code + Vim Ultimate Cheat Sheet

This guide is optimized for a Vim user transitioning to VS Code with custom "Space" leader mappings.

---

## 1. Custom "Leader" Mappings (Normal Mode)
**Leader Key:** `Space`

| Key Mapping | Action | Note |
| :--- | :--- | :--- |
| `Space` + `f` | **Fuzzy Find File** | Quickest way to open files. Type `path/to/file` fuzzily (e.g., `b/u/par` for `backend/utils/parser.py`). |
| `Space` + `e` | **Toggle File Explorer** | Show/Hide the left sidebar. |
| `Space` + `;` | **Command Palette** | Run *any* VS Code command. Your central hub. |
| `Space` + `w` | **Save File** | Equivalent to `:w`. |
| `Space` + `q` | **Close Tab** | Closes the current active editor tab. |
| `Space` + `z` | **Zen Mode Toggle** | Toggle zen mode for no distractions. |
| `Space` + `t` | **Toggle Terminal** | Opens/Closes the integrated terminal panel. |
| `Space` + `v` | **Split Vertical** | `:vsp` equivalent. |
| `Space` + `s` | **Split Horizontal** | `:sp` equivalent. |
| `Space` + `h` | **Clear Highlights** | `:nohl` equivalent (Clear search highlights). |

---

## 2. Vim Muscle Memory Fixes
These mappings bridge the gap between Vim and VS Code.

* **`jk`** → `Esc` (Exit Insert Mode instantly).
* **`Ctrl` + `w`** → Navigate Splits (Standard Vim behavior).
* **`Ctrl` + `u` / `d`** → Scroll Up/Down (Half Page).
* **`Ctrl` + `b` / `f`** → Scroll Up/Down (Full Page).

---

## 3. VS Code "Superpowers"
Features where VS Code outperforms standard Vim.

* **`gd` (Go to Definition):** Jumps instantly to where a function or class is defined.
* **`gh` (Show Hover):** Shows docstrings, type hints, and function signatures without touching the mouse.
* **`gb` (Multi-Cursor):** Selects the word under the cursor. Press again to select the *next* occurrence. Type to edit all at once.
* **`F2` (Rename Symbol):** Safely renames a variable/function across the **entire project** (not just the file).
* **`Cmd` + `.` (Quick Fix):** The "Magic Fix" button. auto-imports missing libraries, fixes syntax errors, etc.

---

## 4. Navigation & Movement
* **`Ctrl` + `o`** → **Go Back** (Jump to previous cursor position, even across files).
* **`Ctrl` + `i`** → **Go Forward**.
* **`g` + `t`** → Go to **Next Tab**.
* **`g` + `p`** → Go to **Previous Tab**.

---

## 5. Terminal & Remote Work
* **`Cmd` + `j`** → **Focus Terminal** (Mac Native). Jumps cursor from Code to Terminal.
* **`Ctrl` + `k`** → **Focus Code** (Custom mapping). Jumps cursor from Terminal back to Code.
* **`Ctrl` + `` ` ``** → Toggle/Focus Terminal.
* **`exit`** → Type this to close the current terminal session.
* **`Cmd` + `R`** → **Reload Window**. Use this if the Remote-SSH connection freezes or IntelliSense stops working.
* **`:e!`** → Reload current file from disk (revert changes).

---

## 6. Must-Have Extensions
Ensure these are installed (especially on Remote SSH targets).

### Core
* **Vim** (`vscodevim.vim`): The engine for all mappings.
* **Remote - SSH** (`ms-vscode-remote.remote-ssh`): Essential for working on Linux servers.

### Python & Shell
* **Python** (`ms-python.python`): IntelliSense, linting, and debugging.
* **Pylance** (`ms-python.vscode-pylance`): High-performance language server.
* **ShellCheck** (`timonwong.shellcheck`): **Critical** for Bash. Highlights syntax errors and bugs in scripts.
* **Hg** (`mrcrowl.hg`): Mercurial support (since you use `hg` repos).

### Aesthetics
* **Tokyo Night** (`enkia.tokyo-night`): Matches the "Dusk" Vim theme.
* **Material Icon Theme** (`PKief.material-icon-theme`): Makes file icons in the explorer readable.

---

## 7. Run & Debug (The "Killer Feature")
VS Code's debugger is visual and easier than `pdb`.

### A. Select Your Environment (Conda/VirtualEnv)
Before running anything, tell VS Code which Python to use.
1.  Open the Command Palette (`Space` + `;`).
2.  Type **"Python: Select Interpreter"**.
3.  Choose your specific environment (e.g., `conda env: my-project` or `/usr/bin/python3`).
    * *Tip:* Look at the bottom-right status bar; it shows the current Python version.

### B. Passing Command Line Arguments (launch.json)
If your script runs like `python train.py --epochs 10 --batch-size 32`, you need a configuration file.
1.  Go to the **Run and Debug** tab (Sidebar icon with the bug).
2.  Click **"create a launch.json file"**.
3.  Select **"Python"** -> **"Python File"**.
4.  Edit the file to look like this:
    ```json
    {
        "version": "0.2.0",
        "configurations": [
            {
                "name": "Python: Train Model",
                "type": "debugpy",
                "request": "launch",
                "program": "${file}",  // Runs the currently open file
                "console": "integratedTerminal",
                "args": [
                    "--epochs", "10",
                    "--batch-size", "32",
                    "--data-dir", "/tmp/data"
                ]
            }
        ]
    }
    ```
5.  Save. Now press **`F5`** to run with those arguments!

### C. Debugging Controls (Floating Bar)
| Icon / Key | Name | Action |
| :--- | :--- | :--- |
| **`F5`** | **Continue** | Run until the next breakpoint. |
| **`F10`** | **Step Over** | Execute the current line and go to the next. |
| **`F11`** | **Step Into** | Go *inside* the function call on the current line. |
| **`Shift`+`F11`** | **Step Out** | Finish current function and return to caller. |
| **`Shift`+`F5`** | **Stop** | Kill the script. |

### D. The "Watch" Variable Panel
When paused at a breakpoint (Click gutter for Red Dot), look at the **Left Panel**:
* **Variables:** See every local variable's current value.
* **Watch:** Click `+` and type an expression (e.g., `len(my_list) > 5`) to track it live.
* **Debug Console:** (Bottom panel) Type Python code here to interact with the paused script.

---

## 8. High-Impact Transition Tips

### 1. Stop Using the File Tree
* **Old Habit:** Clicking folders in the sidebar.
* **New Habit:** `Space` + `f` (Fuzzy Find).
* **Tip:** You don't need exact names. Type `b u par` to find `backend/utils/parser.py`.

### 2. The Command Palette is "God Mode"
* **Shortcut:** `Space` + `;`
* **Usage:** Forget shortcuts for rare tasks. Just type what you want to do (e.g., "Sort Lines", "Change Case"). It often teaches you the shortcut next to the command.

### 3. Visual Git/Hg Diffs
* **The Gutter:** Look for colored lines near line numbers.
    * **Blue:** Modified.
    * **Green:** Added.
    * **Red Triangle:** Deleted.
* **Action:** Click the color to see the Diff overlay. You can revert specific blocks instantly.

### 4. Multi-Cursor Magic (Better than Macros)
* **Scenario:** Rename `foo` to `bar` in 3 specific places.
* **Action:**
    1.  Click `foo`.
    2.  Press `Cmd` + `d` to select it.
    3.  Press `Cmd` + `d` again to grab the *next* occurrence.
    4.  Type `bar`. It updates all selected instances instantly.

### 5. Zen Mode
* **Action:** `Space` + `;` -> Type "Toggle Zen Mode".
* **Result:** Distraction-free coding. Best for deep focus sessions. `Esc` twice to exit.

