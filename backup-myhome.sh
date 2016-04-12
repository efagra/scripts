#!/bin/bash

export STAMP=`date +%Y%m%d%H%M%S`
export BACKUP_DIR=/media/data/Downloads/backups/efagra-laptop-home/$STAMP/

mkdir -p $BACKUP_DIR

tar -cf - ~/.mozilla | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/mozilla.tar.7z
tar -cf - ~/.config/midori ~/.local/share/midori | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/midori.tar.7z
tar -cf - ~/.claws-mail | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/claws-mail.tar.7z
# Thunderbird soft links to another filesystem in my system
#tar -cf - ~/.thunderbird | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/thunderbird.tar.7z
tar -cf - ~/.purple | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/pidgin.tar.7z
tar -cf - ~/.Skype ~/.config/Skype | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/skype.tar.7z
tar -cf - ~/.xchat2 | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/xchat.tar.7z
tar -cf - ~/.config/transmission | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/transmission.tar.7z
tar -cf - ~/.liferea_1.8 ~/.config/liferea ~/.local/share/liferea ~/.gconf/apps/liferea | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/liferea.tar.7z
tar -cf - ~/.keychain | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/keychain.tar.7z
tar -cf - ~/.config/xfce4 ~/.local/share/notes ~/.local/share/keyrings ~/.local/share/applications ~/.local/share/desktop-directories ~/.local/share/mime ~/.config/menus ~/.config/mimeapps.list ~/.config/user-dirs.dirs ~/.config/user-dirs.locale ~/.dmrc | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/xfce.tar.7z
# Wine soft links to another filesystem in my system
#tar -cf - ~/.wine | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/wine.tar.7z
tar -cf - ~/.caff ~/.caffrc | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/caff.tar.7z
tar -cf - ~/.dia | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/dia.tar.7z
tar -cf - ~/.bash_history ~/.bashrc ~/.profile | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/bash.tar.7z
tar -cf - ~/.gitconfig ~/.gitignore | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/git.tar.7z
tar -cf - ~/.gnupg | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/gnupg.tar.7z
tar -cf - ~/.msmtprc | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/msmtp.tar.7z
tar -cf - ~/.oscrc | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/osc.tar.7z
tar -cf - ~/.pki | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/pki.tar.7z
tar -cf - ~/.VirtualBox | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/virtualbox.tar.7z
tar -cf - ~/.wxcam | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/wxcam.tar.7z
tar -cf - ~/.xscreensaver | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/xscreensaver
tar -cf - ~/.gconf/SoundConverter | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/soundconverter.tar.7z
tar -cf - ~/.config/gtranslator | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/gtranslator.tar.7z
tar -cf - /etc/fstab /etc/os-release | 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si $BACKUP_DIR/root.tar.7z

