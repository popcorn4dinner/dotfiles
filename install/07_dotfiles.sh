declare -a Dotfiles=(
    'aliases'
    'config'
    'functions'
    'jsbeautifyrc'
    'gitconfig'
    'gitignore_global'
    'gemrc'
    'spacemacs'
    'tigrc'
    'tmux.conf'
    'zshenv'
    'zshrc'
    'zpreztorc'
)

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

echo "moving starship config"
rm -rf ~/.config/starship.toml
ln -s $(pwd)/starship.toml ~/.config/starship.toml

echo "moving starship config"
rm -rf ~/.config/kitty/kitty.conf
ln -s $(pwd)/kitty.conf ~/.config/kitty/kitty.conf

echo 'done'
