if ! is-executable yarn -o ! is-executable git; then
    echo "Skipped: npm (missing: brew and/or git)"
    return
fi

# Globally install with npm

packages=(
    babel-eslint
    eslint
    big-presentation
    eslint-plugin-react
    fkill-cli
    js-beautify
    gulp-cli
    react-native-cli
    tern
    underscore-cli
    vmd
)

yarn global add "${packages[@]}"
