#!/bin/bash

mencoder $1 -o $1.mp3 -oac mp3lame -ovc frameno
