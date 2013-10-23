#!/bin/bash

# Following info taken from the arch wiki.
# wiki.archlinux.org/index.php/Change_Root

# To allow the chroot environment to connect to an X server,
# open a terminal inside the X server (i.e. inside the desktop
# of the user that is currently logged in), then run the following
# command which gives permission to anyone to connect to the user's X server:
xhost + &&
#
echo If any proble occurs run the lsblk command for a hint &&
echo You may wish to check the systemd-nspawn alternative &&
echo For more tips check the comments inside this script &&
echo &&
echo If you want to run GUI apps note the DISPLAY &&
echo $DISPLAY &&
echo and export it inside the chroot with export DISPLAY=:0 &&
#
mkdir /mnt/system-chroot &&
#
mount $1 /mnt/system-chroot &&
mount /dev/sda1 /mnt/system-chroot/laptopboot &&
#mount /proc /mnt/system-chroot/proc --bind &&
#mount /sys /mnt/system-chroot/sys --bind &&
#mount /dev /mnt/system-chroot/dev --bind &&
mount -t proc proc /mnt/system-chroot/proc &&
mount -t sysfs sys /mnt/system-chroot/sys &&
mount -o bind /dev /mnt/system-chroot/dev &&
#
cp -L /etc/resolv.conf /mnt/system-chroot/etc/resolv.conf &&
#
echo Inside the chroot run &&
echo export PS1="(chroot) $PS1" &&
echo to differentiate the chroot environment &&
chroot /mnt/system-chroot &&
#
#umount /mnt/system-chroot/dev &&
#umount /mnt/system-chroot/sys &&
#umount /mnt/system-chroot/proc &&
umount /mnt/system-chroot/{proc,sys,dev} &&
umount /mnt/system-chroot/laptopboot &&
umount /mnt/system-chroot &&
#
rmdir /mnt/system-chroot

# Following info taken from the ubuntu wiki.
# help.ubuntu.com/community/BasicChroot

# If you want the chroot to have its own display, you need to create this display with the Xnest command. Perform the following instructions outside the chroot:

# Install the xhost and xnest packages.

# Ensure that /proc is mounted and DNS resolution is set-up within the chroot (see above).

# Type the following into a Terminal:
# Xnest -ac :1
# A blank Xnest window should appear.
# Open another Terminal and type the following to enter the chroot:
# sudo chroot /var/chroot
# While in the chroot shell, type the following:
# export DISPLAY=localhost:1
# If you have problems starting graphical applications, type the above command again, but replace localhost with 127.0.0.1

# Start a window manager inside the chroot. For example, install the metacity package and type:

# metacity &
# Start a graphical application inside the chroot (making sure that you installed it in the chroot first). It should appear in the Xnest window.
# You can install a complete Ubuntu desktop in the chroot by installing the ubuntu-desktop package. GNOME can be started from the command line by running the gnome-session command.

