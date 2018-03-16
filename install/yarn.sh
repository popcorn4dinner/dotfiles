if ! is-executable yarn -o ! is-executable git; then
    echo "Skipped: npm (missing: brew and/or git)"
    return
fi

# Globally install with npm

packages=(
    fkill-cli
    gulp-cli
    react-native-cli
    tern
    underscore-cli
    vmd
)

yarn global add "${packages[@]}"
