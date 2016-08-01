#!/bin/bash
###########################################################################################
# this script creates symbolic links from the home directory to the dotfiles in ~/dotfiles
###########################################################################################

dir=~/dotfiles
dotfiles_old=~/dotfiles_old
dir_files="bashrc zshrc vimrc vim scripts_ws"

#create the backup dotfiles directory
echo "creating $dotfiles_old to backup any existing dotfiles in ~ ..."
mkdir -p $dotfiles_old
echo "done"

#change to the dotfiles directory
echo -n "changing to $dir directory ..."
cd $dir
echo "done"

#move existing dotfiles in the home directory to dotfiles_old
#and create symbolic links from the home directory to any files in the dotfiles directory
#specified in $files
for dir_file in $dir_files; do
  echo "moving any existing dotfiles from ~ to $dotfiles_old ..."
  mv ~/$dir_file $dotfiles_old
  echo "creating symbolic link to $dir_file in home directory"
  ln -s $dir/$dir_file ~/.$dir_file
done
