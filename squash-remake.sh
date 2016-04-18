#!/bin/bash

#This script comes with ABSOLUTELY NO WARRANTY use it at your own risk!

#cron job to rebuild the squashfs image of /usr
if [[ -e /var/lib/pacman/db.lck ]]; then
  exit
fi

mksquashfs /usr /squashed/usr/usr_tmp.sfs -b 65536 || exit 1
umount -l /usr
umount -l /squashed/usr/ro
rm /squashed/usr/usr.sfs
mv /squashed/usr/usr_tmp.sfs /squashed/usr/usr.sfs
rm -rf /squashed/usr/rw/*
mount /squashed/usr/ro
mount /usr
