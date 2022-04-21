#!/bin/sh

mygames=$(ls ~/.steam/steam/steamapps | grep appmanifest | sed 's/[^0-9]*//g')
# this sed command removes everything but the digits

for game in $mygames; do
        bspc rule -a steam_app_$game desktop= state=fullscreen follow=on
done
