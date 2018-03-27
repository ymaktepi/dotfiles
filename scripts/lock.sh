#!/bin/sh

# Take a screenshot
scrot /tmp/screen_locked.png

# Pixellate it 10x (package imagemagick)
mogrify -scale 10% -scale 1000% /tmp/screen_locked.png

# add wonderfull lock
composite -gravity Center ~/.scripts/lock.png /tmp/screen_locked.png /tmp/screen_locked.png

# Lock screen displaying this image.
i3lock -i /tmp/screen_locked.png --veriftext="" --insidevercolor=00000000 --insidewrongcolor=00000000 --insidecolor=00000000 --ringvercolor=00000000 --ringwrongcolor=00000000 --ringcolor=00000000 --linecolor=00000000 --keyhlcolor=000000ff --verifcolor=00000000 --wrongcolor=00000000

