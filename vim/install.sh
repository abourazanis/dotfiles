#!/usr/bin/env bash

#
# Install vim plugins

set -e

cd "$(dirname $0)"/..


install_plugins() {

    declare -r VUNDLE_DIR="$HOME/.vim/plugins/Vundle.vim"
    declare -r VUNDLE_GIT_REPO_URL="https://github.com/VundleVim/Vundle.vim"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install plugins.

    rm -rf  $VUNDLE_DIR \
            && git clone --quiet $VUNDLE_GIT_REPO_URL $VUNDLE_DIR \
            && printf '\n' | vim +PluginInstall +qall


}

update_plugins() {

    vim +PluginUpdate +qall

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    echo "› Install vim plugins"
    install_plugins
    update_plugins

}

main
