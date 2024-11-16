#!/usr/bin/env bash
if [ "$EUID" -eq 0 ]; then
    cp -rvf ./* /usr/share/icons/
else
    cp -rvf ./* ~/.local/share/icons/
    #If you are using an immutable distro please uncomment the next line and comment the above
    #cp -r ./Adwaita-colors/* /var/usrlocal/share/icons/
fi