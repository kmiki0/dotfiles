#!bin/bash
# 前提条件 [curl, git]

# ::dotfiles::
DOT_DIR="$HOME/dotfiles"

mkdir -p ${DOT_DIR}/temp_download

# dotfiles Download    
if ! type "git" > /dev/null 2>&1; then
    echo "git command not found. Please install git."
    exit 1
else
    # clone
    git clone git@github.com:fkubota/dotfiles.git ${DOT_DIR}
fi

# Neovim Install
if ! type "curl" > /dev/null 2>&1; then
    echo "curl command not found. Please install curl."
    exit 1
else
    cd $HOME/temp_download
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage --appimage-extract
    ./squashfs-root/AppRun
    # mv xxxxxxx xxxxxxxxxx
    ln -s /squashfs-root/AppRun /usr/bin/nvim
fi

# fish
# mkdir -p ~/.config/fish/functions
# ln -sf ${DOT_DIR}/fish/config.fish ~/.config/fish/config.fish
# ln -sf ${DOT_DIR}/fish/config-osx.fish ~/.config/fish/config-osx.fish
# ln -sf ${DOT_DIR}/fish/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

