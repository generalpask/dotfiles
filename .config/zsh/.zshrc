# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History
HISTSIZE=5000               # How many lines of history to keep in memory
HISTFILE=~/.zsh_history     # Where to save history to disk
SAVEHIST=5000               # Number of history entries to save to disk
setopt appendhistory        # Append history to the history file (no overwriting)
setopt sharehistory         # Share history across terminals
setopt incappendhistory     # Immediately append to the history file, not just when a term is killed

# Aliases
alias l="ls -lah --color=auto"
alias nv="nvim"
alias irssi="irssi --config=~/.config/irssi/customconfig --home=~/.config/irssi"
alias tmux="tmux -f ~/.config/tmux/.tmux.conf"
alias gs="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git lg"

# Settings
unsetopt beep # Don't beep
bindkey -e    # Emacs keymap

# Completion
autoload -Uz compinit # Load completions
compinit              # Start completions

# Stop backward-kill-word on directory delimiter
autoload -U select-word-style
select-word-style bash

# Start p10k and source config
source $XDG_CONFIG_HOME/zsh/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.config/p10k/.p10k.zsh ]] || source ~/.config/p10k/.p10k.zsh
