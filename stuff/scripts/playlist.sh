#!/usr/bin/env dash

current=$(mpc --format %title% current)
mpc --format %title% playlist | while read -r line; do
    if [[ "$line" == "$current" ]]; then
        echo "> $line"
    else
        echo "  $line"
    fi
done
