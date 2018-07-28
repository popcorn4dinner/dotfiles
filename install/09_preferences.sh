#!/usr/bin/env sh

for source in preferences/*; do
    target="$HOME/Library/Preferences/$(basename $source)"

    if [ -f "$target" ]
    then
        if ! [ -L $target ]
        then
            echo "creating backup of $target in $target.bak"
            mv $target $target.bak
        fi
    fi
    if [ -L $target ]
    then
        echo "removing old link for $target"
        rm $target
    fi

    echo "creating link for $target"
    ln -s "$(pwd)/$source" $target
done
echo "linked all preferences."
