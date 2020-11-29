#!/bin/bash

sudo apt-get install -y vnc4server

vncserver -geometry 1920x1040 -depth 24
sleep 3s

vncserver -kill :1
sleep 3s


mv ${HOME}/.vnc/xstartup ${HOME}/.vnc/xstartup.install.orig
cp xstartup ${HOME}/.vnc/xstartup
chmod a+x ${HOME}/.vnc/xstartup

vncserver -geometry 1920x1040 -depth 24


