#!/bin/bash

echo "setting up neovim..."
brew install neovim
rm -rf ~/.config/nvim
ln -s $(pwd)/nvim ~/.config/nvim

echo "installing elixir ls"
git clone https://github.com/elixir-lsp/elixir-ls.git ~/.config/elixir-ls
cd ~/.config/elixir-ls
mix deps.get && mix compile && mix elixir_ls.release -o release
cd -

echo "install crystal ls"
mkdir -p ~/.config/crystal-ls
cd ~/.config/crystal-ls
curl -L https://github.com/elbywan/crystalline/releases/latest/download/crystalline_x86_64-apple-darwin.gz -o crystalline.gz &&\
gzip -d crystalline.gz &&\
chmod u+x crystalline
cd -

