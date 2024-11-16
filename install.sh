#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]; then
    cp -r ./Adwaita-colors/* /usr/share/icons/
else
    cp -r ./Adwaita-colors/* ~/.local/share/icons/
    #If you are using an immutable distro please uncomment the next line and comment the above
    #cp -r ./Adwaita-colors/* /var/usrlocal/share/icons/
fi