brew install fish
mkdir -p ~/.config/fish
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
declare -a Dotfiles=(
    'aliases.fish'
    'config.fish'
)
for dotfile in "${Dotfiles[@]}";do
    if [ -f "$HOME/.config/fish/.$dotfile" ]
    then
        if ! [ -L "$HOME/.config/fish/$dotfile" ]
        then
            echo "creating backup of $dotfile in .$dotfile.bak"
            mv ~/.config/fish/$dotfile ~/.config/fish/$dotfile.bak
        fi
    fi

    if [ -L "$HOME/.config/fish/$dotfile" ]
    then
        echo "symlink for $dotfile already exists. deleting..."
	      rm ~/.config/fish/$dotfile
    fi

    echo "creating symblink for $dotfile"
    ln -s $(pwd)/fish/$dotfile ~/.config/fish/$dotfile

done

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z

sudo echo /usr/local/bin/fish >> /etc/shells
chsh -s /usr/local/bin/fish
echo 'done'

