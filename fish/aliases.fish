if status --is-interactive
    abbr --add --global ll 'ls -lh'
    abbr --add --global la 'ls -la'
    abbr --add --global ld 'ld -l | grep "^d"'

    abbr --add --global dce 'docker-compose exec'
    abbr --add --global dco 'docker-compose'

    alias f freska
    alias g git
    alias t tmux

    alias k kubectl
    alias kx kubectx
    alias kn kubens
    alias ka kube-attach

    alias pp "pbpaste | base64 -d | pbcopy"

    alias rbbi "bundle install"
    alias rbbe "bundle exec"

    function mkcd
        mkdir -p "$argv"
        and cd "$argv"
    end

    function ts
        tmux new -s (basename $PWD)
        or tmux attach-session -t (basename $PWD)
    end
end
