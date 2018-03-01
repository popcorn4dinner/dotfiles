if ! is-executable yarn -o ! is-executable git; then
    echo "Skipped: npm (missing: brew and/or git)"
    return
fi

# Globally install with npm

packages=(
    gulp-cli
    react-native-cli
    tern
    underscore-cli
    vmd
)

yarn global add "${packages[@]}"
