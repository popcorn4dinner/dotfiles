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

    alias rbbi "bundle install"
    alias rbbe "bundle exec"

    function mkcd
        mkdir -p "$ARGV" && cd "$_"
    end

    function ts
        tmux new -s (basename $PWD)
    end
end
