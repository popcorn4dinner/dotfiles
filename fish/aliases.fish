if status --is-interactive
    abbr --add --global ll 'ls -lh'
    abbr --add --global la 'ls -lh'
    abbr --add --global ld 'ld -l | grep "^d"'

    abbr --add --global dce 'docker-compose exec'
    abbr --add --global dco 'docker-compose'
    abbr --add --global take '| grep '


    alias f freska

    alias k kubectl
    alias kx kubectx
    alias kn kubens
    alias ka kube-attach


    function mkcd
        mkdir -p "$ARGV" && cd "$_"
    end
end
