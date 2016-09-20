#!/bin/bash

export STAMP=$1
export BACKUP_DIR=/home/data/Downloads/backups/efagra-laptop-home/$STAMP/
export FAILSAFE_DIR=orig

if [[ -z "$1" ]]; then
  echo need one of the following stamps:
  ls /home/data/Downloads/backups/efagra-laptop-home/
  exit 1
fi
if [ ! -d $BACKUP_DIR ]; then
  echo invalid path
  exit 2
fi

cd

#mkdir $FAILSAFE_DIR
mkdir -p $FAILSAFE_DIR/.config
mkdir -p $FAILSAFE_DIR/.local/share
mkdir -p $FAILSAFE_DIR/.gconf/apps

mv .mozilla $FAILSAFE_DIR/
mv .config/midori $FAILSAFE_DIR/.config/
mv .local/share/midori $FAILSAFE_DIR/.local/share/
#mv .claws-mail $FAILSAFE_DIR/
#mv .thunderbird $FAILSAFE_DIR/
mv .purple $FAILSAFE_DIR/
#mv .Skype $FAILSAFE_DIR/
mv .xchat2 $FAILSAFE_DIR/
mv .config/transmission $FAILSAFE_DIR/.config/
mv .liferea_1.8 $FAILSAFE_DIR/
mv .config/liferea $FAILSAFE_DIR/.config/
mv .local/share/liferea $FAILSAFE_DIR/.local/share/
mv .gconf/apps/liferea $FAILSAFE_DIR/.gconf/apps/
mv .config/xfce4 $FAILSAFE_DIR/.config/
mv .local/share/notes $FAILSAFE_DIR/.local/share/
mv .local/share/keyrings $FAILSAFE_DIR/.local/share/
mv .local/share/applications $FAILSAFE_DIR/.local/share/
mv .local/share/desktop-directories $FAILSAFE_DIR/.local/share/
mv .local/share/mime $FAILSAFE_DIR/.local/share/
mv .config/menus $FAILSAFE_DIR/.config/
mv .config/mimeapps.list $FAILSAFE_DIR/.config/
mv .config/user-dirs.dirs $FAILSAFE_DIR/.config/
mv .config/user-dirs.locale $FAILSAFE_DIR/.config/
mv .dmrc $FAILSAFE_DIR/
#mv .wine $FAILSAFE_DIR/
mv .caff $FAILSAFE_DIR/
mv .caffrc $FAILSAFE_DIR/
mv .dia $FAILSAFE_DIR/
mv .bash_history $FAILSAFE_DIR/
mv .bashrc $FAILSAFE_DIR/
mv .profile $FAILSAFE_DIR/
mv .gitconfig $FAILSAFE_DIR/
mv .gitignore $FAILSAFE_DIR/
mv .gnupg $FAILSAFE_DIR/
mv .msmtprc $FAILSAFE_DIR/
mv .oscrc $FAILSAFE_DIR/
mv .pki $FAILSAFE_DIR/
mv .ssh $FAILSAFE_DIR/
mv .VirtualBox $FAILSAFE_DIR/
mv .wxcam $FAILSAFE_DIR/
mv .xscreensaver $FAILSAFE_DIR/
mv .gconf/apps/SoundConverter $FAILSAFE_DIR/.gconf/apps/
mv .config/gtranslator $FAILSAFE_DIR/.config/
mv .local/share/teamviewer $FAILSAFE_DIR/.local/share/
#mv bin $FAILSAFE_DIR/
#mv data $FAILSAFE_DIR/
#mv Downloads $FAILSAFE_DIR/
#mv Mail $FAILSAFE_DIR/
#mv opt $FAILSAFE_DIR/
#mv src $FAILSAFE_DIR/
#mv VirtualBox\ VMs $FAILSAFE_DIR/
#mv workspace $FAILSAFE_DIR/
#mv Βίντεο $FAILSAFE_DIR/
#mv Δημόσια $FAILSAFE_DIR/
#mv Έγγραφα $FAILSAFE_DIR/
#mv Εικόνες $FAILSAFE_DIR/
#mv Επιφάνεια\ εργασίας $FAILSAFE_DIR/
#mv Μουσική $FAILSAFE_DIR/
#mv Πρότυπα $FAILSAFE_DIR/

cd /

7z x -so $BACKUP_DIR/mozilla.tar.7z | tar xf -
7z x -so $BACKUP_DIR/midori.tar.7z | tar xf -
#7z x -so $BACKUP_DIR/claws-mail.tar.7z | tar xf -
#7z x -so $BACKUP_DIR/thunderbird.tar.7z | tar xf -
7z x -so $BACKUP_DIR/pidgin.tar.7z | tar xf -
#7z x -so $BACKUP_DIR/skype.tar.7z | tar xf -
7z x -so $BACKUP_DIR/xchat.tar.7z | tar xf -
7z x -so $BACKUP_DIR/hexchat.tar.7z | tar xf -
7z x -so $BACKUP_DIR/transmission.tar.7z | tar xf -
7z x -so $BACKUP_DIR/liferea.tar.7z | tar xf -
7z x -so $BACKUP_DIR/keychain.tar.7z | tar xf -
#7z x -so $BACKUP_DIR/xfce.tar.7z | tar xf -
7z x -so $BACKUP_DIR/desktop-env-misc.tar.7z | tar xf -
#7z x -so $BACKUP_DIR/thunar.tar.7z | tar xf -
#7z x -so $BACKUP_DIR/wine.tar.7z | tar xf -
7z x -so $BACKUP_DIR/caff.tar.7z | tar xf -
7z x -so $BACKUP_DIR/dia.tar.7z | tar xf -
7z x -so $BACKUP_DIR/bash.tar.7z | tar xf -
7z x -so $BACKUP_DIR/git.tar.7z | tar xf -
7z x -so $BACKUP_DIR/gnupg.tar.7z | tar xf -
7z x -so $BACKUP_DIR/msmtp.tar.7z | tar xf -
7z x -so $BACKUP_DIR/osc.tar.7z | tar xf -
7z x -so $BACKUP_DIR/pki.tar.7z | tar xf -
7z x -so $BACKUP_DIR/ssh.tar.7z | tar xf -
7z x -so $BACKUP_DIR/virtualbox.tar.7z | tar xf -
7z x -so $BACKUP_DIR/wxcam.tar.7z | tar xf -
7z x -so $BACKUP_DIR/xscreensaver.tar.7z | tar xf -
7z x -so $BACKUP_DIR/soundconverter.tar.7z | tar xf -
7z x -so $BACKUP_DIR/gtranslator.tar.7z | tar xf -
7z x -so $BACKUP_DIR/teamviewer.tar.7z | tar xf -
#7z x -so $BACKUP_DIR/links.tar.7z | tar xf -

