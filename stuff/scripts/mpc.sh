#!/usr/bin/env dash

title="$1"

mpc search title "$title" | mpc add
position=$(mpc playlist -f '%position% %title%' | grep -i "$title" | head -n1 | cut -d " " -f 1)
mpc play "$position"
