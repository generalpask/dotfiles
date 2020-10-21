export EDITOR="vim"

# ~/ clean-up
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

# Uncomment these lines to set MYVIMRC and VIMINIT, for vim
# Apparently Neovim also uses these if you set them, but I need Neovim to use .config/nvim/init.vim
#export MYVIMRC="${XDG_CONFIG_HOME:-$HOME/.config}/vim/.vimrc"
#export VIMINIT="source $MYVIMRC"
