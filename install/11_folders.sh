#! /bin/bash

folders=(
    Documents
    Projects
)

for folder in $folders;do
    echo "creating folder $folder"
    mkdir -p "$HOME/$folder"
done
