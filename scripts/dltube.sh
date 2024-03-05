#!/bin/bash

# if curl --head --silent --fail "$(wl-paste)" 2> /dev/null;

notify-send -t 3000 "Trying normal" "$(wl-paste)"
yt-dlp -i bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio $(wl-paste);
if [ $? -eq 0 ]; then
	notify-send -t 6000 "Done normal" "$(wl-paste)"
else
	notify-send -t 6000 "Trying it with no SSL" "$(wl-paste)"
	yt-dlp --no-check-certificates $(wl-paste)
	notify-send -t 6000 "Done but" "$(wl-paste)"
fi