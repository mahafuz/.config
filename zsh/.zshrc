# ========================================
# Mahafuz's Zsh configuration - optimized
# For macOS M1 / Homebrew
# ========================================

# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# ======================
# Theme
# ======================
ZSH_THEME="half-life"

# ======================
# Plugins
# ======================
plugins=(
  aliases
  encode64
  web-search
  copypath
  copyfile
  command-not-found
  fastfile
  vscode
  emoji
  colored-man-pages
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# ======================
# PATH setup
# ======================
# Initial PATH entries in preferred order
path_array=(
  "$HOME/.local/bin"
  "$HOME/.nvm/versions/node/v22.18.0/bin"
  "/opt/homebrew/bin"
  "/opt/homebrew/sbin"
  "/usr/local/bin"
  "/usr/bin"
  "/bin"
  "/usr/sbin"
  "/sbin"
  "$HOME/.lmstudio/bin"
)

# Remove duplicates (Zsh array unique)
typeset -U path_array

# Convert back to colon-separated string
export PATH="${(j/:/)path_array}"

# ======================
# MANPATH setup
# ======================
# GNU coreutils man pages first
export MANPATH="/opt/homebrew/opt/coreutils/libexec/gnuman:$MANPATH"

# ======================
# AUTO COMPLETE setup
# ======================
source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# ======================
# Completion setup
# ======================
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh-completions:$FPATH"
  autoload -Uz compinit
  compinit -C  # safe completions
fi

# ======================
# Starship prompt
# ======================
eval "$(starship init zsh)"

# ======================
# zsh-autosuggestions
# ======================
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bold,underline"
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# ======================
# zsh-syntax-highlighting (load last)
# ======================
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# ======================
# The Fuck
# ======================
eval "$(thefuck --alias)"

# ======================
# Aliases
# ======================
alias cat="ccat"
alias python="python3"
alias pip="pip3"

# Web search shortcuts
alias ws="web_search"
alias \?="google"
alias \!\?="ws chatgpt"
alias \?\?="reddit"

# Fastfile plugin prefix
fastfile_var_prefix='@'

# Open ports
alias show_open_ports="sudo lsof -i -n -P"
alias open_ports="show_open_ports"

# Public IP
alias show_public_ip="curl -Ss icanhazip.com"
alias public_ip="show_public_ip"
alias copy_public_ip="show_public_ip | pbcopy"
alias show_public_ip_v4="curl -Ss4 icanhazip.com/v4"
alias public_ip_v4="show_public_ip_v4"
alias copy_public_ip_v4="show_public_ip_v4 | pbcopy"
alias show_public_ip_v6="curl -Ss6 icanhazip.com/v6"
alias public_ip_v6="show_public_ip_v6"
alias copy_public_ip_v6="show_public_ip_v6 | pbcopy"

# VSCode plugin aliases are already provided by Oh My Zsh

# Eza configuration
if command -v eza &>/dev/null; then
  alias l='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first'
  alias ll='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first -l --git -h'
  alias la='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first -a'
  alias lla='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first -a -l --git -h'
else
  alias l='ls -CF'
  alias la='ls -A'
  alias ll='ls -alF'
  alias lla='ls -la'
fi

# Battery status
alias battery='pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto'

# Base64 encode/decode clipboard (print + copy)
alias encode_clipboard_base64='pbpaste | encode64 | tee >(pbcopy)'
alias encode_clipboard='encode_clipboard_base64'
alias base64_clipboard='encode_clipboard_base64'

alias decode_clipboard_base64='pbpaste | decode64 | tee >(pbcopy)'
alias decode_clipboard='decode_clipboard_base64'
alias base64_clipboard_decode='decode_clipboard_base64'

# ======================
# Functions
# ======================
mkcd() {
  if [ -z "$1" ]; then
    echo "Enter a directory name"
  elif [ -d "$1" ]; then
    echo "\`$1' already exists"
  else
    mkdir "$1" && cd "$1"
  fi
}

markdown2pdf() {
  if [ -z "$1" ] || [ ! -f "$1" ]; then
    echo "Provide an existing input markdown file"
  elif [ "${1##*.}" != "md" ]; then
    echo "Provided file is not a markdown file!"
  else
    pandoc "$1" -f markdown -t latex -s -o "${1%.*}.pdf"
  fi
}

# ======================
# User aliases for config editing
# ======================
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshrc="source ~/.zshrc"

# ======================
# Oh My Zsh defaults
# ======================
DISABLE_AUTO_TITLE="true"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/mahafuz/.lmstudio/bin"
# End of LM Studio CLI section


# ===============================
# System Environment Variables
# ===============================
export VSCODE_HOMEBREW_PREFIX="/opt/homebrew"
export VSCODE_PHP_PATH="${VSCODE_HOMEBREW_PREFIX}/bin/php"
export VSCODE_PYTHON_PATH="${VSCODE_HOMEBREW_PREFIX}/bin/python3"

