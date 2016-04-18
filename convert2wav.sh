#!/bin/bash

mplayer -ao pcm:fast:file=${1}.wav -vo null $1
