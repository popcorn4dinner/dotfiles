#!/bin/bash

  sh ./install/brew.sh
  sh ./install/brew-cask.sh
  sh ./install/gem.sh
  sh ./install/yarn.sh 

  declare -a Dotfiles=('zshrc' 'spacemacs' 'gitconfig' 'gitignore' 'oh-my-zsh' 'functions')
  
  # inform the user and print the whole array on the screen:
  echo 'going to move the following selected .dotfiles:'
  echo ${Dotfiles[@]}
  
 
  # move selected dotfiles to new directory .dotfiles
  
  for dotfile in "${Dotfiles[@]}";do
   if [ -f "$HOME/.$dotfile" ]
   then
       if ! [ -L "$HOME/.$dotfile" ]
       then
         echo "creating backup of $dotfile in .$dotfile.bak"
         mv ~/.$dotfile ~/.$dotfile.bak
       fi
   fi

   if [ -L "$HOME/.$dotfile" ]
   then
       echo "symlink for $dotfile already exists. deleting..."
	     rm ~/.$dotfile 
   fi

   echo "creating symblink for $dotfile"
   ln -s $(pwd)/$dotfile ~/.$dotfile

  done
  echo 'done'
