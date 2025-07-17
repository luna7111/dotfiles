#!/usr/bin/env sh



read -p "Before installing, make sure you are executing install.sh from inside the reposirory parent directory (./install.sh, not dotfiles/install.sh or so) (y/N)" confirmation

if [ -z $confirmation ] || [ $confirmation != "y" ]; then
    echo abort.
    exit 0
fi



target=~/.vimrc
src=${PWD}/vim/.vimrc
if [ -f $target ] || [ -L $target ]; then
    read -p "File $target already exists, overwrite? (y/N): " confirmation
    if [ ! -z $confirmation ] && [ $confirmation = "y" ]; then
        echo "Overwriting file."
        rm $target
        ln -s $src $target
    else
        echo "Didn't overwrite file."
    fi
else
    ln -s $src $target
fi



target=~/.vim
src=${PWD}/vim/.vim
if [ -d $target ] || [ -L $target ]; then
    read -p "Directory $target already exists, overwrite? (y/N): " confirmation
    if [ ! -z $confirmation ] && [ $confirmation = "y" ]; then
        echo "Overwriting directory."
        rm -rf $target
        ln -s $src $target
    else
        echo "Didn't overwrite directory."
    fi
else
    ln -s $src $target
fi



target=~/templates
src=${PWD}/vim-templates
if [ -d $target ] || [ -L $target ]; then
    read -p "Directory $target already exists, overwrite? (y/N): " confirmation
    if [ ! -z $confirmation ] && [ $confirmation = "y" ]; then
        echo "Overwriting directory."
        rm -rf $target
        ln -s $src $target
    else
        echo "Didn't overwrite directory."
    fi
else
    ln -s $src $target
fi



read -p "Do you want to install YouCompleteMe server side (YouCompleteMe/install.py)? (y/N):" confirmation
if [ $confirmation = "y" ]; then
    echo "Executing install.py"
    python3 vim/.vim/pack/YouCompleteMe/opt/YouCompleteMe/install.py
else
    echo Skipping.
fi



target=~/.zshrc
src=${PWD}/zsh/.zshrc
if [ -f $target ] || [ -L $target ]; then
    read -p "File $target already exists, overwrite? (y/N): " confirmation
    if [ ! -z $confirmation ] && [ $confirmation = "y" ]; then
        echo "Overwriting file."
        rm $target
        ln -s $src $target
    else
        echo "Didn't overwrite file."
    fi
else
    ln -s $src $target
fi

