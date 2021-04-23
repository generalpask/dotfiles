#!/bin/zsh

# Temporarily set XDG_CONFIG_HOME, if .zshenv is not sourced before this script is run
export XDG_CONFIG_HOME="$HOME/.config"

if [[ ! -d $HOME/.config ]]; then
    echo -e "\e[34mSymlinking .config to home folder\e[0m"
    ln -sn $HOME/dotfiles/.config $HOME/.config
else
    echo -e "\e[31mCould not symlink .config to home folder, directory already exists\e[0m"
    echo -e "\e[31mStopping script\e[0m"
    exit 1
fi

if [[ ! -f $HOME/.zshenv ]]; then
    echo -e "\e[34mSymlinking .zshenv to home folder\e[0m"
    ln -sn $HOME/dotfiles/.zshenv $HOME/.zshenv
else
    echo -e "\e[31mCould not symlink .zshenv to home folder, file already exists\e[0m"
fi

if [[ ! -d $XDG_CONFIG_HOME/zsh/powerlevel10k ]]; then
    echo -e "\e[34mInstalling powerlevel10k\e[0m"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $XDG_CONFIG_HOME/zsh/powerlevel10k
else
    echo -e "\e[33mpowerlevel10k is already installed, skipping\e[0m"
fi

if [[ ! -f $XDG_CONFIG_HOME/nvim/autoload/plug.vim ]]; then
    echo -e "\e[34mInstalling vim-plug\e[0m"
    curl -sfLo ${XDG_CONFIG_HOME}/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo -e "\e[33mvim-plug is already installed, skipping\e[0m"
fi

if [[ ! -d $XDG_CONFIG_HOME/nvim/autoload/plugged ]]; then
    echo -e "\e[34mInstalling vim plugins\e[0m"
    nvim -c ':PlugInstall' -c 'qa!'
else
    echo -e "\e[33mvim plugins are already installed, skipping\e[0m"
fi

echo -e "\e[32mDone!"
