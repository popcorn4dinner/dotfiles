#! /bin/bash

folders=(
    org
    Documents
    Projects
)

for folder in $folders;do
    echo "creating folder $folder"
    mkdir -p $folder
done
