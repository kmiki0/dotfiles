#!bin/bash
# 前提条件 [curl, git]

# ::dotfiles::
DOT_DIR="$HOME/dotfiles"
TEMP_DIR="$HOME/temp_download"


mkdir -p ${TEMP_DIR}

# dotfiles Download    
if ! type "git" > /dev/null 2>&1; then
    echo "git command not found. Please install git."
    exit 1
else
    # clone
    git clone https://github.com/kmiki0/dotfiles.git ${DOT_DIR}
fi

# Neovim Install
if ! type "curl" > /dev/null 2>&1; then
    echo "curl command not found. Please install curl."
    exit 1
else
    cd ${TEMP_DIR}
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage --appimage-extract
    mv ${TEMP_DIR}/squashfs-root /usr/bin/squashfs-root
    ln -s /usr/bin/squashfs-root/AppRun /usr/bin/nvim
fi

# fish
# mkdir -p ~/.config/fish/functions
# ln -sf ${DOT_DIR}/fish/config.fish ~/.config/fish/config.fish
# ln -sf ${DOT_DIR}/fish/config-osx.fish ~/.config/fish/config-osx.fish
# ln -sf ${DOT_DIR}/fish/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish


# symbolic links
ln -sf $HOME/dotfiles/.vim $HOME/.config/nvim


