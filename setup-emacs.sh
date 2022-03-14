#!/bin/bash
# -*-text-*-
#
# root Shell script to install and configure emacs on a
# Debian-family Linux machine, Debian, Ubuntu etc
#
# This script installs 'rc'
#
# Usage:
#
# $ setup-emacs.sh [user id]
#
set -euo pipefail
apt --version >/dev/null
/usr/bin/rc -c '' || sudo apt install -y rc

/usr/bin/rc -sp $@ <<'VALESHANEWARNE'

flag e +
#flag x +
userid = $USER
if(~ $#* 1) {
   userid = $1
}


sudo apt install -y emacs
emacs --version | head -1

ifs = ':'$nl u = `{getent passwd $userid}
homedir = $u(6)
nuid = $u(3)
ngid = $u(4)

sudo mkdir -p $homedir/.emacs
sudo cp init.el $homedir/.emacs/init.el
sudo chown -vR $nuid:$ngid $homedir/.emacs

VALESHANEWARNE

exit

# TODO
#  Tweak Gtk to be emacs-y - not sure if this even works
#  See http://tiborsimko.org/emacs-bindings-in-gtk-apps.html
#  command xfconf-query -c xsettings -p /Gtk/KeyThemeName -s Emacs
