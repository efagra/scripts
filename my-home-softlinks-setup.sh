#!/bin/bash

# Since using/trying/testing multiple desktop environments,
# standard application configuration files are kept in a single
# standard location. That way only a single backup is needed
# and it is easy to restore my profile through symlinks and
# rm home directory profile safely.

cd

ln -s /home/data data
# TODO if it exists backup first and then
ln -s data/conf/thunderbird .thunderbird
ln -s data/opt opt
ln -s opt/Android Android
ln -s data/conf/AndroidStudioConfigDir .AndroidStudio2.1
ln -s data/bin bin
ln -s data/Downloads Downloads
ln -s data/Mail Mail
ln -s data/opt opt
ln -s data/src src
ln -s data/VirtualBox\ VMs VirtualBox\ VMs
ln -s data/conf/default-wine-prefix .wine
ln -s data/workspace workspace

rmdir Videos
ln -s data/Videos
rmdir Public
ln -s data/Δημόσια Public
rmdir Documents
ln -s data/Documents
rmdir Pictures
ln -s data/Images Pictures
rmdir Music
ln -s data/Music
rmdir Templates
ln -s data/Πρότυπα Templates

