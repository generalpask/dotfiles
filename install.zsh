#!/bin/zsh

# Temporarily set XDG_CONFIG_HOME, if .zshenv is not sourced before this script is run
export XDG_CONFIG_HOME="$HOME/.config"

if [[ ! -f $XDG_CONFIG_HOME/nvim/autoload/plug.vim ]]; then
    echo -e "\e[36mInstalling vim-plug\e[0m"
    curl -fLo ${XDG_CONFIG_HOME}/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [[ ! -d $XDG_CONFIG_HOME/nvim/autoload/plugged ]]; then
    echo -e "\e[36mInstalling vim plugins\e[0m"
    nvim -c ':PlugInstall' -c 'qa!'
fi

echo -e "\e[32mDone!"

