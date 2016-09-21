#!/bin/bash

# TODO check if I am root and then execute
cd /etc/zypp/repos.d/

#wget http://packman.inode.at/suse/openSUSE_Tumbleweed/packman.repo
wget http://download.virtualbox.org/virtualbox/rpm/opensuse/13.2/virtualbox.repo
zypper addrepo -f http://packman.inode.at/suse/openSUSE_Leap_42.1/ packman
zypper addrepo -f http://opensuse-guide.org/repo/openSUSE_Leap_42.1/ dvd
zypper addrepo -f http://linuxdownload.adobe.com/linux/x86_64/ adobe-flash-plugin
zypper install k3b-codecs ffmpeg lame packman-gstreamer-meta-package libdvdcss2
#zypper install flash-plugin
#zypper install java-1_8_0-openjdk-plugin
zypper install xine-browser-plugin

zypper in ack acpi alsa-plugins-32bit build chromium claws-mail fetchmsttfonts ffmpeg flash-player gcc gedit-plugins gedit git htop httrack imagewriter info2html kernel-devel kernel-source keychain lame libdvdcss2 liferea make midori mkvtoolnix ncdu osc p7zip patterns-openSUSE-non_oss patterns-openSUSE-non_oss_opt qemu rtmpdump scribus smplayer smtube soundconverter tree unrar upx VirtualBox-5.i wine wammu wxcam hexchat dia signing-party
#xfce4-panel-plugin-weather 
zypper in youtube-dl
#thunar-plugin-archive thunar-plugin-media-tags thunar-plugin-shares thunar-plugin-vcs
zypper in gstreamer-0_10-plugins-bad gstreamer-0_10-plugins-ugly gstreamer-0_10-plugins-ugly-orig-addon
zypper in ispell ispell-greek myspell-el_GR libreoffice-l10n-el

zypper inr
zypper dup --from packman
zypper inr

zypper rm -u tracker tumbler plymouth zeitgeist
zypper addlock tracker tumbler plymouth zeitgeist

echo firefox https://www.google.com/tools/dlpage/hangoutplugin
echo firefox https://www.teamviewer.com/en/download/linux/
echo firefox https://www.skype.com/el/
echo firefox http://www.viber.com/en/


