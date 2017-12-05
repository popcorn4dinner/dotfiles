#!/bin/bash
  
  declare -a Dotfiles=('zshrc' 'spacemacs' 'gitconfig' 'gitignore')
  
  # inform the user and print the whole array on the screen:
  echo 'going to move the following selected .dotfiles:'
  echo ${Dotfiles[@]}
  
 
  # move selected dotfiles to new directory .dotfiles
  
  for dotfile in "${Dotfiles[@]}";do
   if [ -f "$HOME/.$dotfile" ]
   then
       if ! [ -L "$HOME/.$dotfile" ]
       then
         echo "creating backup of $dotfile in $dotfile.bak"
         mv ~/.$dotfile ~/.$dotfile.bak
       fi
   fi

   if [ -L "$HOME/.$dotfile" ]
   then
     echo "symlink for $dotfile already exists"
   else
     echo "creating symblink for $dotfile"
     ln -s $(pwd)/.$dotfile ~/.$dotfile
   fi
  done
  echo 'done'
