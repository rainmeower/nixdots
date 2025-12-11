#!/usr/bin/env bash
should_quit="$(echo "quit $1?
yes
no" | fzf --no-input +s --style=minimal --tac)"

if [[ $should_quit == "yes" || $should_quit == "quit"* ]]; then 
  uwsm stop
fi

