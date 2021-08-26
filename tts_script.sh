#!/usr/bin/env zsh

###############################################################################

## here's a full list of installed languages ##
# afrikaans           albanian            aragonese           armenian
# armenian-west       bosnian             brazil              bulgarian
# cantonese           catalan             croatian            czech
# danish              default             dutch               en-scottish
# en-westindies       english             english-north       english-us
# english_rp          english_wmids       esperanto           estonian
# finnish             french              french-Belgium      georgian
# german              greek               greek-ancient       hindi
# hungarian           icelandic           indonesian          irish-gaeilge
# italian             kannada             kurdish             latin
# latvian             lingua_franca_nova  lithuanian          lojban
# macedonian          malay               malayalam           Mandarin
# nepali              norwegian           persian             persian-pinglish
# polish              portugal            punjabi             romanian
# russian             serbian             slovak              spanish
# spanish-latin-am    swahili-test        swedish             tamil
# turkish             vietnam             vietnam_hue         vietnam_sgn
# welsh

VOICE=english; # default is literally called default
###############################################################################

SPEED=300;
# between 80 - 450,
# default is 175
# 240 is a good baseline
# 380 is about as fast as I can still understand

PITCH=60; # between 0 - 99, default is 50
TARGET="'$(xclip -selection primary -o)'"; # the selected text to be spoken

if [ $(pidof espeak) ]; then # toggl speaking on/off
    killall espeak;
else
    # primary envocation
    espeak --punct="-;^()[]{}|_<>\`" -s $SPEED -v $VOICE -p $PITCH $TARGET;
fi
