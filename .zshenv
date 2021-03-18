export EDITOR="nvim"

# ~/ clean-up
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export WEECHAT_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/weechat"
export MANPATH="$MANPATH:/usr/local/texlive/2020/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/2020/texmf-dist/doc/info"
export PATH=/usr/local/texlive/2020/bin/x86_64-linux:$PATH

# Uncomment these lines to set MYVIMRC and VIMINIT, for vim
# Apparently Neovim also uses these if you set them, but I need Neovim to use .config/nvim/init.vim
#export MYVIMRC="${XDG_CONFIG_HOME:-$HOME/.config}/vim/.vimrc"
#export VIMINIT="source $MYVIMRC"
