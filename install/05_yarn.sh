if ! is-executable yarn -o ! is-executable git; then
    echo "Skipped: yarn (missing: brew and/or git)"
    return
fi

# Globally install with npm

packages=(
    babel-eslint
    eslint
    eslint-plugin-react
    fkill-cli
    js-beautify
    tern
)

yarn global add "${packages[@]}"
