# Python Server

This directory contains my attempt to set up an Oauth2 server with Python libraries.  The hypothesis is that I might be able to bang some things out way quicker with Python, so I'll give it a shot.

## Steps to get set up

### Installing Python 3
```
brew install python3
```
It also required me to install some XCode command line tools.

### Installing virtualenvwrapper and create virtual environment
```
pip3 install virtualenvwrapper
mkvirtualenv -a $PWD millstone
```
Once those commands are done, you can use `workon millstone` to activate your virtual environment and `deactivate` to deactivate it.


