#!/bin/sh
# This polybar script show the current brightness level and allows you to increase or decrease it by scrolling up or down with the mouse wheel
#
# Make sure you have inotify-tools (and brightnessctl obv) installed otherwise inotifywait won't work
# You need to install a font from nerdfonts.com in order to see glyphs correctly. You can replace them with what you prefer

brightness_level=$(brightnessctl g)
brightness_max=$(brightnessctl m)
brightness_percent=$(( $brightness_level * 100 / $brightness_max ))

getIcon() {
	if [ "$brightness_percent" -ge 90 ]; then
	    icon=""
	elif [ "$brightness_percent" -ge 75 ]; then
	    icon=""
	elif [ "$brightness_percent" -ge 50 ]; then
	    icon=""
	elif [ "$brightness_percent" -ge 40 ]; then
	    icon=""
	elif [ "$brightness_percent" -ge 25 ]; then
	    icon=""
	elif [ "$brightness_percent" -ge 10 ]; then
	    icon=""
	else
	    icon=""
	fi
	echo "$icon"
}

increase(){
	brightnessctl s +10%
	return
}

decrease(){
	brightnessctl s 10%-
	return
}


case "$1" in 
	"increase")
		increase
		exit
		;;
	"decrease")
		decrease
		exit
		;;
	*)
		#inotifywait -q -m -e close_write /sys/class/backlight/radeon_b10/brightness | 
			echo "$(getIcon) $brightness_percent%"
		;;
esac


