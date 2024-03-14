if curl --head --silent --fail "$(wl-paste)" 2> /dev/null;
 then
	# notify-send -t 3000 "Starting video" "$(wl-paste)"
    mpv $(wl-paste)
 else
    echo "Not a valid url" 
	notify-send -t 6000 "Not a valid url to use" "$(wl-paste)"
fi

