#!/bin/bash

export STAMP=`date +%Y%m%d%H%M%S`
export BACKUP_DIR=/home/data/Downloads/backups/efagra-laptop-home/$STAMP/
export COMPRESS="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -si"

mkdir -p $BACKUP_DIR

tar -cf - ~/.mozilla | $COMPRESS $BACKUP_DIR/mozilla.tar.7z
tar -cf - ~/.config/midori ~/.local/share/midori | $COMPRESS $BACKUP_DIR/midori.tar.7z
#tar -cf - ~/.claws-mail | $COMPRESS $BACKUP_DIR/claws-mail.tar.7z
# Thunderbird soft links to another filesystem in my system
#tar -cf - ~/.thunderbird | $COMPRESS $BACKUP_DIR/thunderbird.tar.7z
tar -cf - ~/.purple | $COMPRESS $BACKUP_DIR/pidgin.tar.7z
#tar -cf - ~/.Skype ~/.config/Skype | $COMPRESS $BACKUP_DIR/skype.tar.7z
tar -cf - ~/.xchat2 | $COMPRESS $BACKUP_DIR/xchat.tar.7z
tar -cf - ~/.config/transmission | $COMPRESS $BACKUP_DIR/transmission.tar.7z
tar -cf - ~/.liferea_1.8 ~/.config/liferea ~/.local/share/liferea ~/.gconf/apps/liferea | $COMPRESS $BACKUP_DIR/liferea.tar.7z
tar -cf - ~/.keychain | $COMPRESS $BACKUP_DIR/keychain.tar.15z
tar -cf - ~/.config/xfce4 ~/.local/share/notes ~/.local/share/keyrings ~/.local/share/applications ~/.local/share/desktop-directories ~/.local/share/mime ~/.config/menus ~/.config/mimeapps.list ~/.config/user-dirs.dirs ~/.config/user-dirs.locale ~/.dmrc ~/.config/dconf | $COMPRESS $BACKUP_DIR/xfce.tar.7z
tar -cf - ~/.config/Thunar | $COMPRESS $BACKUP_DIR/thunar.tar.7z
# Wine soft links to another filesystem in my system
#tar -cf - ~/.wine | $COMPRESS $BACKUP_DIR/wine.tar.7z
tar -cf - ~/.caff ~/.caffrc | $COMPRESS $BACKUP_DIR/caff.tar.7z
tar -cf - ~/.dia | $COMPRESS $BACKUP_DIR/dia.tar.7z
tar -cf - ~/.bash_history ~/.bashrc ~/.profile | $COMPRESS $BACKUP_DIR/bash.tar.7z
tar -cf - ~/.gitconfig ~/.gitignore | $COMPRESS $BACKUP_DIR/git.tar.7z
tar -cf - ~/.gnupg | $COMPRESS $BACKUP_DIR/gnupg.tar.7z
tar -cf - ~/.msmtprc | $COMPRESS $BACKUP_DIR/msmtp.tar.7z
tar -cf - ~/.oscrc | $COMPRESS $BACKUP_DIR/osc.tar.7z
tar -cf - ~/.pki | $COMPRESS $BACKUP_DIR/pki.tar.7z
tar -cf - ~/.ssh | $COMPRESS $BACKUP_DIR/ssh.tar.7z
tar -cf - ~/.VirtualBox | $COMPRESS $BACKUP_DIR/virtualbox.tar.7z
tar -cf - ~/.wxcam | $COMPRESS $BACKUP_DIR/wxcam.tar.7z
tar -cf - ~/.xscreensaver | $COMPRESS $BACKUP_DIR/xscreensaver.tar.7z
tar -cf - ~/.gconf/apps/SoundConverter | $COMPRESS $BACKUP_DIR/soundconverter.tar.7z
tar -cf - ~/.config/gtranslator | $COMPRESS $BACKUP_DIR/gtranslator.tar.7z
tar -cf - ~/.local/share/teamviewer11 | $COMPRESS $BACKUP_DIR/teamviewer.tar.7z
tar -cf - ~/bin ~/data ~/Downloads ~/Mail ~/opt ~/src ~/VirtualBox\ VMs ~/workspace ~/Βίντεο ~/Δημόσια ~/Έγγραφα ~/Εικόνες ~/Επιφάνεια\ εργασίας ~/Μουσική ~/Πρότυπα .thunderbird .wine .claws-mail .Skype | $COMPRESS $BACKUP_DIR/links.tar.7z
tar -cf - /etc/fstab /etc/os-release | $COMPRESS $BACKUP_DIR/root.tar.7z
#tar -cf $BACKUP_DIR/root-history.tar /root/.bash_history
