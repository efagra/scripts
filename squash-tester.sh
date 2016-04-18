#!/bin/bash

# Resources:

# http://lizards.opensuse.org/2009/05/15/livecd-performance-clicfs-vs-squashfs/
# http://www.squashfs-lzma.org/
# http://www.tldp.org/HOWTO/html_single/SquashFS-HOWTO/

# https://bbs.archlinux.org/viewtopic.php?pid=714052
# http://forums.gentoo.org/viewtopic-t-646289.html

#Created by Brando56894 from the Arch Linux Community
#Based off of a tutorial found on the Gentoo forums
#This script comes with ABSOLUTELY NO WARRANTY use it at your risk!

#creates the directories that /usr will be squashed into
echo
mkdir -p /squashed/usr/{ro,rw}

#compress /usr into a squashfile with a 64k blocksize
# mksquashfs /usr /squashed/usr/usr.sfs -b 65536
# 

#adds the filesystems to fstab
echo "Please add the following lines to your /etc/fstab"
echo
echo "/squashed/usr/usr.sfs    /squashed/usr/ro squashfs     loop,ro 0 0" 
echo "usr /usr  aufs  br:/squashed/usr/rw:/squashed/usr/ro 0 0"
echo
read -p "Press any key to continue after you finished editing the file"
echo

#move the /usr folder instead of deleting it
mv /usr /usr.old
mkdir /usr
