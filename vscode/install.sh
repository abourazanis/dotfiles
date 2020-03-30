#!/bin/bash

declare script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
if [[ $(uname) == *Darwin* ]]; then
    declare vsc_root_dir="$HOME/Library/Application Support/Code"
else
    declare vsc_root_dir="$HOME/.config/Code"
fi
declare vsc_config_dir="$vsc_root_dir/User"

mkdir -p $vsc_config_dir

if [[ ! -e $vsc_config_dir/settings.json ]]; then
    ln -s $script_dir/settings.json "$vsc_config_dir/settings.json"
fi

if [[ ! -e $vsc_config_dir/keybindings.json ]]; then
    ln -s $script_dir/keybindings.json "$vsc_config_dir/keybindings.json"
fi

if [[ ! -e $vsc_config_dir/snippets ]]; then
    ln -s $script_dir/snippets "$vsc_config_dir/snippets"
fi

# Get list of installed extensions with code --list-extensions
declare -a extensions=(
    alefragnani.project-manager
    eamodio.gitlens
    Equinusocio.vsc-community-material-theme
    Equinusocio.vsc-material-theme
    equinusocio.vsc-material-theme-icons
    esbenp.prettier-vscode
    ms-azuretools.vscode-docker
    ms-python.python
    naumovs.color-highlight
    njpwerner.autodocstring
)

for i in ${extensions[@]}; do
    code --install-extension $i &
done
