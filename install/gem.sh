if ! is-macos -o ! is-executable brew; then
    echo "Skipped: gem"
    return
fi

brew install gpg2

\curl -sSL https://get.rvm.io | bash -s stable

rbenv install 2.3.6
rbenv install 2.4.3
rbenv global 2.3.6

gem install rails
gem install spring
gem install capistrano capistrano-npm
gem install sinatra

