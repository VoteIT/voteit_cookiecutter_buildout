#!/bin/bash
#run buildout etc. We have an eggs cache at the users home, so we'll link that

ln -s /home/{{cookiecutter.server_user}}/eggs eggs
virtualenv . -ppython2.7
source bin/activate
pip install zc.buildout
buildout

