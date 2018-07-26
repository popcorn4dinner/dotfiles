#! /bin/bash

if /usr/bin/xcode-select --install; then
    echo "installed xcode dev tools"
else
    echo "xcode dev tools: nothing to do..."
fi

