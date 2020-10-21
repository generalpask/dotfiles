export EDITOR="vim"

# ~/ clean-up
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export MYVIMRC="${XDG_CONFIG_HOME:-$HOME/.config}/vim/.vimrc"
export VIMINIT="source $MYVIMRC"
