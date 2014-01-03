#!/bin/bash

# Prepare an openSUSE net installation without the use of any external
# media. Beware, no chance for mistakes, you can render your system
# unbootable and unusable. When started you must complete the installation.

# source: en.opensuse.org/SDB:Network_installation

mkdir -p /boot/install
cd /boot/install
wget --output-document=oS-13.1.vmlinuz.install http://download.opensuse.org/distribution/13.1/repo/oss/boot/$(uname -i)/loader/linux &&
wget --output-document=oS-13.1.initrd.install http://download.opensuse.org/distribution/13.1/repo/oss/boot/$(uname -i)/loader/initrd &&
echo "Add the next lines to your grub boot loader configuration"
echo "If you are not using grub, then adjust accordinly."
echo ""
echo "title net install 13.1"
echo "    root (hd0,0)"
echo "    kernel /boot/install/oS-13.1.vmlinuz.install install=http://download.opensuse.org/distribution/openSUSE-stable/repo/oss/"
echo "    initrd /boot/install/oS-13.1.initrd.install"
