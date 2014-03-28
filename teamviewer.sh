#!/bin/bash

cd ~/opt &&
7z x teamviewer_linux.tar.7z -so | tar xf - &&
teamviewer9/teamviewer &&
rm -rf teamviewer9
