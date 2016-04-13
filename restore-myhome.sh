#!/bin/bash

export STAMP=$1
export BACKUP_DIR=/media/data/Downloads/backups/efagra-laptop-home/$STAMP/

if [[ -z "$1" ]]; then
  echo need one of the following stamps:
  ls /media/data/Downloads/backups/efagra-laptop-home/
  exit 1
fi
if [ ! -d $BACKUP_DIR ]; then
  echo invalid path
  exit 2
fi

cd

7z x -so $BACKUP_DIR/mozilla.tar.7z | tar xf -
7z x -so $BACKUP_DIR/midori.tar.7z | tar xf -
7z x -so $BACKUP_DIR/claws-mail.tar.7z | tar xf -
#7z x -so $BACKUP_DIR/thunderbird.tar.7z | tar xf -
7z x -so $BACKUP_DIR/pidgin.tar.7z | tar xf -
7z x -so $BACKUP_DIR/skype.tar.7z | tar xf -
7z x -so $BACKUP_DIR/xchat.tar.7z | tar xf -
7z x -so $BACKUP_DIR/transmission.tar.7z | tar xf -
7z x -so $BACKUP_DIR/liferea.tar.7z | tar xf -
7z x -so $BACKUP_DIR/keychain.tar.7z | tar xf -
7z x -so $BACKUP_DIR/xfce.tar.7z | tar xf -
#7z x -so $BACKUP_DIR/wine.tar.7z | tar xf -
7z x -so $BACKUP_DIR/caff.tar.7z | tar xf -
7z x -so $BACKUP_DIR/dia.tar.7z | tar xf -
7z x -so $BACKUP_DIR/bash.tar.7z | tar xf -
7z x -so $BACKUP_DIR/git.tar.7z | tar xf -
7z x -so $BACKUP_DIR/gnupg.tar.7z | tar xf -
7z x -so $BACKUP_DIR/msmtp.tar.7z | tar xf -
7z x -so $BACKUP_DIR/osc.tar.7z | tar xf -
7z x -so $BACKUP_DIR/pki.tar.7z | tar xf -
7z x -so $BACKUP_DIR/virtualbox.tar.7z | tar xf -
7z x -so $BACKUP_DIR/wxcam.tar.7z | tar xf -
7z x -so $BACKUP_DIR/xscreensaver.tar.7z | tar xf -
7z x -so $BACKUP_DIR/soundconverter.tar.7z | tar xf -
7z x -so $BACKUP_DIR/gtranslator.tar.7z | tar xf -



