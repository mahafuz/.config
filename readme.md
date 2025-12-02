# VSCode Configuration Guide

## 🚀 Quick Start

### 1. Clone the Configuration

```bash
git clone [your-repo-url] ~/.config/dotfiles
cd ~/.config/dotfiles
```

### 2. Install Nerd Fonts

**Required**: Install a Nerd Font patched font for proper icons in VSCode.

**Recommended Fonts:**

-   **JetBrainsMono Nerd Font** (Recommended)
-   **FiraCode Nerd Font**
-   **Cascadia Code Nerd Font**

**Installation:**

```bash
# macOS (using Homebrew)
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font

# Linux (Ubuntu/Debian)
sudo apt install fonts-jetbrains-mono

# Or download from: https://www.nerdfonts.com/font-downloads
```

**Set as default in VSCode:**

-   Go to Settings → Font Family
-   Add `'JetBrainsMono Nerd Font'` or your chosen Nerd Font
-   Example: `'JetBrainsMono Nerd Font', 'JetBrains Mono', Monaco, Menlo, 'Courier New', monospace`

### 3. Install VSCode Extensions

Run the installation script:

```bash
./install-extensions.sh
```

Or manually install from the [Extensions List](#-extensions-list).

### 4. Symlink Configuration

```bash
# macOS/Linux
ln -sf ~/.config/dotfiles/.config/.vscode ~/Library/Application\ Support/Code/User

# Or use the setup script
./setup.sh
```

---

## 🎨 Theme & Appearance

### Current Themes

-   **Light Theme**: Real IntelliJ Light
-   **Dark Theme**: Min Dark (for dark mode users)
-   **Icon Theme**: vscode-icons
-   **Font**: JetBrainsMono Nerd Font (with ligatures enabled)

### Font Settings

-   **Font Family**: `'JetBrainsMono Nerd Font', 'JetBrains Mono', Monaco, Menlo, 'Courier New', monospace`
-   **Size**: 13px
-   **Weight**: 500
-   **Line Height**: 1.25
-   **Letter Spacing**: -0.2
-   **Ligatures**: Enabled

### Theme Switching

To switch between light and dark themes:

```json
// In settings.json - Change this line:
"workbench.colorTheme": "Min Dark",  // For dark mode
"workbench.colorTheme": "Real IntelliJ Light",  // For light mode
```

### Layout Customizations

-   No editor tabs (clean look)
-   No minimap
-   Relative line numbers
-   Hidden activity bar
-   Hidden command center
-   Compact folders disabled

---

## ⌨️ Keybindings & Vim Mode

### Vim Configuration

-   **Leader Key**: `<Space>`
-   Relative line numbers
-   Smart relative line
-   Highlighted yank
-   Incremental command preview

### Essential Vim Bindings

| Key   | Action                | Description                     |
| ----- | --------------------- | ------------------------------- |
| `jk`  | Escape                | Exit insert mode                |
| `gd`  | Go to Definition      | Jump to definition              |
| `gpd` | Peek Definition       | Preview definition in peek view |
| `gi`  | Go to Implementation  | Jump to implementation          |
| `gpi` | Peek Implementation   | Preview implementation          |
| `gr`  | Find References       | Find all references             |
| `gt`  | Go to Type Definition | Jump to type definition         |
| `gpt` | Peek Type Definition  | Preview type definition         |
| `gq`  | Quick Fix             | Show quick fixes                |
| `gh`  | Show Hover            | Show definition preview hover   |

### Leader Key Bindings (Space is Leader)

#### Navigation

| Key         | Action      | Description              |
| ----------- | ----------- | ------------------------ |
| `<Space>v`  | Split Right | Vertical split           |
| `<Space>s`  | Split Down  | Horizontal split         |
| `<Space>h`  | Focus Left  | Focus left editor group  |
| `<Space>j`  | Focus Below | Focus below editor group |
| `<Space>k`  | Focus Above | Focus above editor group |
| `<Space>l`  | Focus Right | Focus right editor group |
| `<Space>e`  | Explorer    | Show file explorer       |
| `<Space>b;` | Breadcrumbs | Focus breadcrumbs        |

#### File Operations

| Key        | Action       | Description          |
| ---------- | ------------ | -------------------- |
| `<Space>w` | Save         | Save current file    |
| `<Space>W` | Save All     | Save all files       |
| `<Space>q` | Quit         | Close current editor |
| `<Space>Q` | Quit All     | Close all editors    |
| `<Space>x` | Save & Close | Save and close       |

#### Search & Navigation

| Key         | Action        | Description               |
| ----------- | ------------- | ------------------------- |
| `<Space>f`  | Find in Files | Search across files       |
| `<Space>ss` | Find in Files | Alternative find shortcut |
| `<Space>rf` | Recent Files  | Open recently used files  |
| `<Space>p`  | Format        | Format document           |
| `<Space>t`  | Terminal      | Toggle terminal           |
| `<Space>rn` | Rename        | Rename symbol             |
| `<Space>ca` | Quick Fix     | Show code actions         |
| `<Space>/`  | Clear Search  | Clear search highlight    |

### Buffer Navigation

| Key       | Action          | Description           |
| --------- | --------------- | --------------------- |
| `Shift+h` | Previous Buffer | Go to previous buffer |
| `Shift+l` | Next Buffer     | Go to next buffer     |
| `Shift+q` | Close Buffer    | Close current buffer  |

### Breadcrumbs Navigation

| Key       | Action   | When                |
| --------- | -------- | ------------------- |
| `Shift+h` | Previous | Breadcrumbs focused |
| `Shift+l` | Next     | Breadcrumbs focused |
| `Enter`   | Reveal   | Breadcrumbs focused |

### Visual Mode Bindings

| Key         | Action         | Description               |
| ----------- | -------------- | ------------------------- |
| `<`         | Outdent        | Decrease indent           |
| `>`         | Indent         | Increase indent           |
| `J`         | Move Down      | Move lines down           |
| `K`         | Move Up        | Move lines up             |
| `<Space>c`  | Comment Line   | Toggle line comment       |
| `<Space>C`  | Block Comment  | Toggle block comment      |
| `<Space>S/` | Block Comment  | Alternative block comment |
| `<Space>s`  | Search/Replace | Start search/replace      |

### Custom Keybindings (Non-Vim)

#### General

| Key            | Action         | Description            |
| -------------- | -------------- | ---------------------- |
| `Ctrl+Shift+Q` | Close Window   | Close VSCode window    |
| `Ctrl+E`       | Toggle Sidebar | Show/hide sidebar      |
| `Ctrl+L`       | Focus Editor   | Return focus to editor |

#### Terminal

| Key            | Action            | When             |
| -------------- | ----------------- | ---------------- |
| `Ctrl+Shift+T` | Toggle Panel      | Show/hide panel  |
| `Ctrl+Shift+N` | New Terminal      | Terminal focused |
| `Ctrl+N`       | Next Terminal     | Terminal focused |
| `Ctrl+P`       | Previous Terminal | Terminal focused |
| `Ctrl+Q`       | Kill Terminal     | Terminal focused |

#### File Explorer

| Key            | Action           | When                   |
| -------------- | ---------------- | ---------------------- |
| `Ctrl+Shift+E` | Show Explorer    | Focus explorer         |
| `Ctrl+Shift+R` | Refresh Explorer | Files explorer focused |
| `r`            | Rename File      | Files explorer focused |
| `n`            | New File         | Files explorer focused |
| `Shift+N`      | New Folder       | Files explorer focused |
| `x`            | Cut              | Files explorer focused |
| `p`            | Paste            | Files explorer focused |
| `d`            | Delete           | Files explorer focused |

#### Search & Find

| Key            | Action            | When                |
| -------------- | ----------------- | ------------------- |
| `Ctrl+H`       | Find              | Editor focused      |
| `Ctrl+Shift+H` | Replace           | Editor focused      |
| `Ctrl+N`       | Next Match        | Find widget visible |
| `Ctrl+P`       | Previous Match    | Find widget visible |
| `Ctrl+E`       | Toggle Case       | Find widget visible |
| `Ctrl+W`       | Toggle Whole Word | Find widget visible |
| `Ctrl+R`       | Toggle Regex      | Find widget visible |

---

## 📦 Extensions List

### Essential Extensions

| Extension            | Purpose           | Store Link                                                                                         |
| -------------------- | ----------------- | -------------------------------------------------------------------------------------------------- |
| **Vim**              | Vim emulation     | [Install](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)                       |
| **Prettier**         | Code formatter    | [Install](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)              |
| **vscode-icons**     | File icons        | [Install](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)      |
| **PHP Intelephense** | PHP intelligence  | [Install](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client) |
| **PHP DocBlocker**   | PHP documentation | [Install](https://marketplace.visualstudio.com/items?itemName=neilbrayfield.php-docblocker)        |
| **React Snippets**   | React/TS snippets | [Install](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets)     |

### Language Support

| Extension              | Language       | Store Link                                                                                           |
| ---------------------- | -------------- | ---------------------------------------------------------------------------------------------------- |
| **Python**             | Python support | [Install](https://marketplace.visualstudio.com/items?itemName=ms-python.python)                      |
| **Docker**             | Docker support | [Install](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)           |
| **Code Spell Checker** | Spell checking | [Install](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) |

### Theme & UI

| Extension               | Purpose           | Store Link                                                                                    |
| ----------------------- | ----------------- | --------------------------------------------------------------------------------------------- |
| **Real IntelliJ Light** | Light theme       | [Install](https://marketplace.visualstudio.com/items?itemName=ssmi.theme-real-intellij-light) |
| **Min Dark**            | Dark theme        | [Install](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.min-dark)         |
| **Nerd Font**           | Icon font support | (Install font from website)                                                                   |

### Utility

| Extension      | Purpose            | Store Link                                                                           |
| -------------- | ------------------ | ------------------------------------------------------------------------------------ |
| **GitLens**    | Git supercharged   | [Install](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)       |
| **Todo Tree**  | TODO highlighting  | [Install](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree) |
| **Error Lens** | Error highlighting | [Install](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens)  |

---

## ⚙️ Configuration Details

### Editor Settings

```json
{
	"editor.fontFamily": "'JetBrainsMono Nerd Font', 'JetBrains Mono', Monaco, Menlo, 'Courier New', monospace",
	"editor.fontSize": 13,
	"editor.lineNumbers": "relative",
	"editor.formatOnSave": true,
	"editor.wordWrap": "on",
	"editor.minimap.enabled": false,
	"editor.cursorStyle": "block-outline",
	"editor.fontLigatures": true
}
```

### Theme Settings

```json
{
	// Light theme (default)
	"workbench.colorTheme": "Real IntelliJ Light",

	// For dark mode users, change to:
	// "workbench.colorTheme": "Min Dark",

	"workbench.iconTheme": "vscode-icons"
}
```

### Terminal Settings

```json
{
	"terminal.integrated.fontFamily": "'JetBrainsMono Nerd Font', monospace",
	"terminal.integrated.fontLigatures.enabled": true,
	"terminal.integrated.defaultProfile.linux": "bash"
}
```

### PHP Configuration

```json
{
	"php.debug.executablePath": "/opt/homebrew/bin/php", // macOS
	"php.debug.executablePath": "/usr/bin/php", // Linux
	"intelephense.phpdoc.useFullyQualifiedNames": true,
	"php-docblocker.qualifyClassNames": true
}
```

### Git Settings

```json
{
	"git.autofetch": true,
	"git.inputValidationLength": 72
}
```

---

## 🔧 Platform-Specific Setup

### Nerd Fonts Installation

#### macOS

```bash
# Install using Homebrew
brew tap homebrew/cask-fonts

# Choose your preferred Nerd Font
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-cascadia-code-nerd-font

# Verify installation
ls /Library/Fonts/ | grep -i nerd
```

#### Linux (Ubuntu/Debian)

```bash
# Method 1: Download and install manually
cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.fonts
fc-cache -fv

# Method 2: Use package manager (if available)
sudo apt install fonts-jetbrains-mono
```

#### Windows

1. Download font from: https://www.nerdfonts.com
2. Extract the .zip file
3. Right-click font files → "Install for all users"
4. Restart VSCode

### Development Tools Setup

#### macOS

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install development tools
brew install php
brew install python
brew install node

# Install nvm for Node version management
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
nvm install --lts
```

#### Linux (Ubuntu/Debian)

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install development tools
sudo apt install php php-cli
sudo apt install python3 python3-pip
sudo apt install nodejs npm

# Install build essentials
sudo apt install build-essential
```

#### Windows

```bash
# Using Chocolatey (recommended)
choco install php
choco install python
choco install nodejs-lts

# Using Scoop
scoop install php
scoop install python
scoop install nodejs-lts
```

---

## 🐛 Troubleshooting

### Nerd Font Issues

1. **Icons not showing in terminal**:
    ```json
    {
    	"terminal.integrated.fontFamily": "'JetBrainsMono Nerd Font', monospace"
    }
    ```
2. **Font not appearing in VSCode**:
    - Restart VSCode after font installation
    - Check font name in system font book
    - Ensure font name matches exactly in settings

### Vim Mode Not Working

1. Ensure Vim extension is installed
2. Check if `"vim.leader": "<Space>"` is set
3. Restart VSCode

### Theme Issues

1. **Min Dark theme not appearing**:
    - Install Min Dark extension first
    - Restart VSCode
    - Set theme in settings: `"workbench.colorTheme": "Min Dark"`

### PHP Intelephense Errors

1. Run `Ctrl+Shift+P` → `Intelephense: Index workspace`
2. Clear cache: `Ctrl+Shift+P` → `Intelephense: Clear cache and reload`
3. Restart VSCode

### Keybindings Not Working

1. Check for conflicts in `keybindings.json`
2. Use `Ctrl+K Ctrl+S` to open keyboard shortcuts
3. Search for conflicting bindings

### Terminal Issues

1. Check default shell in VSCode settings
2. Ensure shell is properly configured
3. Check PATH environment variable

---

## 📁 Project Structure

```
.config/
├── .vscode/
│   ├── settings.json      # Main configuration
│   ├── keybindings.json   # Custom keybindings
│   ├── tasks.json        # Task definitions
│   └── convert.php       # PHP array syntax converter
├── zsh/                  # Zsh configuration
└── .gitignore           # Git ignore rules
```

---

## 🔄 Updating Configuration

### Update Settings

1. Edit files in `~/.config/dotfiles/.config/.vscode/`
2. Reload VSCode window (`Ctrl+R` or `Cmd+R`)

### Add New Extensions

1. Install extension in VSCode
2. Add to documentation if it's essential
3. Consider adding to install script

### Share Changes

```bash
cd ~/.config/dotfiles
git add .
git commit -m "Update VSCode configuration"
git push
```

---

## 📚 Recommended Workflow

### 1. Daily Use

-   Use `<Space>` as leader key for most operations
-   Navigate with Vim keys (`h`, `j`, `k`, `l`)
-   Use `gd` and `gr` for code navigation
-   Format on save (automatic)

### 2. File Management

-   `<Space>e` to open explorer
-   `r` to rename, `n` for new file, `d` to delete
-   `Shift+N` for new folder

### 3. Terminal Work

-   `<Space>t` to toggle terminal
-   `Ctrl+Shift+T` to toggle panel
-   Navigate terminals with `Ctrl+N`/`Ctrl+P`

### 4. Search & Navigation

-   `<Space>f` to search in files
-   `Ctrl+H` to find in current file
-   `<Space>rf` for recent files

---

## 🤝 Contributing

Found a bug or have suggestions?

1. Fork the repository
2. Create a feature branch
3. Submit a pull request
4. Update documentation if needed

---

## 📄 License

This configuration is provided as-is. Feel free to customize for your needs.

---

## 🙏 Credits

-   JetBrains for JetBrains Mono font
-   Nerd Fonts project for icon patching
-   VSCode team for the excellent editor
-   VSCodeVim extension maintainers
-   All extension authors

---

_Last Updated: December 2024_  
_Maintainer: Mahafuz_  
_For questions or issues, open an issue on GitHub._

---

## 📝 Quick Reference Card

### Most Used Shortcuts

```
<Space>v      - Split vertically
<Space>s      - Split horizontally
<Space>e      - File explorer
<Space>t      - Terminal
<Space>f      - Find in files
gd           - Go to definition
gr           - Find references
Shift+h/l    - Switch buffers
<Space>p     - Format document
```

### Vim Cheat Sheet

```
Normal Mode:
  i - Insert mode
  v - Visual mode
  :w - Save
  :q - Quit

Movement:
  h/j/k/l - Left/Down/Up/Right
  w/b     - Next/previous word
  0/$     - Start/end of line

Editing:
  dd      - Delete line
  yy      - Yank line
  p       - Paste
  u       - Undo
  Ctrl+r  - Redo
```

### Theme Switching

```json
// Change in settings.json:
"workbench.colorTheme": "Min Dark"        // Dark theme
"workbench.colorTheme": "Real IntelliJ Light"  // Light theme
```

---

## 🌙 Dark Theme Preview (Min Dark)

If you prefer dark mode, the configuration includes **Min Dark** theme support. This minimalist dark theme is easy on the eyes and works perfectly with the Nerd Fonts.

**Features:**

-   Low contrast for reduced eye strain
-   Clean, minimal interface
-   Great syntax highlighting
-   Perfect for late-night coding sessions

To enable dark mode:

1. Install "Min Dark" extension from marketplace
2. Update your `settings.json`:
    ```json
    {
    	"workbench.colorTheme": "Min Dark"
    }
    ```
3. Restart VSCode


## 👀 Demos

### Dark Theme (Min-Dark)
<img width="1545" height="1136" alt="CleanShot 2025-12-02 at 23 31 03" src="https://github.com/user-attachments/assets/4ebae4dc-c793-4150-bd67-54b9bc0fb58f" />

### Light Theme (Real IntelliJ Light)
<img width="1523" height="1143" alt="CleanShot 2025-12-02 at 23 32 52" src="https://github.com/user-attachments/assets/26ac5602-19c3-4c01-bc69-75469b2e8aaf" />

---

**Happy Coding! 🚀**

_Remember: Nerd Fonts are required for proper icon display in the terminal and file explorer!_
