#!/usr/bin/env bash
#
# Run all dotfiles installers.

set -e

# Install pip virtualenv etc


echo ">sudo -H pip3 install --upgrade pip"
sudo -H pip3 install --upgrade pip

echo "›sudo pip uninstall virtualenv"
sudo pip uninstall virtualenv
echo "›sudo pip uninstall virtualenvwrapper"
sudo pip uninstall virtualenvwrapper
echo "›sudo pip3 install virtualenv"
sudo pip3 install virtualenv  
echo "›sudo pip3 install virtualenvwrapper"
sudo pip3 install virtualenvwrapper

echo "> Creating the virtualevns directory"
mkdir ~/.virtualenvs


