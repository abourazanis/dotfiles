#!/usr/bin/env bash

# Install pip virtualenv etc

echo "› easy_install pip"
sudo easy_install pip

echo "› pip install virtualenv"
sudo pip install virtualenv

echo "› pip install virtualenvwrapper"
sudo pip install virtualenvwrapper

# Needed packages for atom linting
echo "> sudo pip install flake8 flake8-docstrings hacking"
sudo pip install flake8 flake8-docstrings hacking jedi

echo "> Creating the virtualevns directory"
mkdir ~/.virtualenvs
