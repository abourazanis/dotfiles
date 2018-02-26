#!/bin/sh

# Install pip virtualenv etc


echo "› sudo pip2 install virtualenv"
sudo pip2 install virtualenv

echo "› sudo pip2 install virtualenvwrapper"
sudo pip2 install virtualenvwrapper

# Needed packages for atom linting
echo "> sudo pip2 install flake8 flake8-docstrings hacking"
sudo pip2 install flake8 flake8-docstrings hacking jedi --user

echo "> Creating the virtualevns directory"
mkdir ~/.virtualenvs
