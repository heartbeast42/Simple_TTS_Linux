
# A simple/useful text to speech script for Linux.

## Dependencies
The only dependency is `espeak`
for Debian/Ubuntu like systems you can install it with...
``` sh
sudo apt update
sudo apt install espeak
```

## Install and setup
* Install dependencies (see above)
* Clone this repo
* set a keyboard shortcut to execute the script called `tts_script.sh`
    * NOTE: I'm in KDE, if your on a Gnome or another GTK based GUI steps should be similar.
    * open System Settings and navigate to Shortcuts >> Custom Shortcuts
    * select Edit >> New >> Global Shortcut >> Command/URL
    * click the "Trigger" tab and set a key combo to activate the script)
    * select the "Action" tab and navigate to the script


## Usage
1. select some text
2. press your chosen key combination to invoke the script
3. press your chosen key combination if you want to stop the script before it's finished speaking all the text.
