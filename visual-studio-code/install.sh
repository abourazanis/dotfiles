#!/usr/bin/env bash

echo "› Installing Visual Studio code extensions and config."

code -v > /dev/null
if [[ $? -eq 0 ]];then
     echo "Installing VSC extensions.."
    code --install-extension TwentyChung.jsx
    code --install-extension anseki.vscode-color
    code --install-extension bibhasdn.django-html
    code --install-extension christian-kohler.npm-intellisense
    code --install-extension dbaeumer.vscode-eslint
    code --install-extension donjayamanne.python
    code --install-extension dzannotti.vscode-babel-coloring
    code --install-extension eg2.vscode-npm-script
    code --install-extension qinjia.seti-icons
    code --install-extension t-sauer.autolinting-for-javascript
    code --install-extension timothymclane.react-redux-es6-snippets
    code --install-extension Zignd.html-css-class-completion
    code --install-extension abusaidm.html-snippets
    code --install-extension christian-kohler.path-intellisense
    code --install-extension mohsen1.prettify-json
    code --install-extension robinbentley.sass-indented
    code --install-extension mrmlnc.vscode-scss
    code --install-extension cssho.vscode-svgviewer
    code --install-extension Equinusocio.vsc-material-theme
    code --install-extension whtouche.vscode-js-console-utils
    code --install-extension wix.vscode-import-cost
    code --install-extension kato.intellij-idea-keybindings

    echo "Extensions for VSC have been installed."

    #echo "Overwriting user config"
    #cp $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings.backup.json
    echo "Your previous config has been saved to: $HOME/Library/Application Support/Code/User/settings.backup.json"
    cp ./settings.json $HOME/Library/Application\ Support/Code/User/settings.json

    echo "New user config has been written."
else
    error "It looks like the command 'code' isn't accessible."
    error "Please make sure you have Visual Studio Code installed"
    error "And that you executed this procedure: https://code.visualstudio.com/docs/setup/mac"
fi
