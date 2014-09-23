#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=".bashrc .vimrc"    # list of files/folders to symlink in homedir

##########

# install prerequisites
#git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#brew install python 
#brew install vim --with-python --with-ruby --with-perl
#sudo cp /usr/local/bin/vim /usr/bin/vim

# create dotfiles_old in homedir
echo "1. Removing old $olddir, and creating new $olddir for backup. ~"
rm -r $olddir
mkdir -p $olddir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
echo "2. Moving any existing dotfiles from ~ to $olddir"
for file in $files; do
    mv ~/$file ~/dotfiles_old/
    echo "$file: Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done
echo "...done"

