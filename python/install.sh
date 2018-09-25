#!/bin/sh

# Install pip virtualenv etc


echo "› sudo pip2 install virtualenv"
sudo pip2 install virtualenv

echo "› sudo pip2 install virtualenvwrapper"
sudo pip2 install virtualenvwrapper

echo "> Creating the virtualevns directory"
mkdir ~/.virtualenvs
