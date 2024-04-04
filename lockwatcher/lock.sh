#!/usr/bin/env bash
screencapture /tmp/screen_locked.jpg

# Pixellate it 10x (package imagemagick)
mogrify -scale 10% -scale 1000% /tmp/screen_locked.jpg

osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/tmp/screen_locked.jpg"'
