#!/usr/bin/env bash

if [ $(pidof espeak) ]; then
    killall espeak;
else
    espeak "$(xclip -selection primary -o)";
fi
