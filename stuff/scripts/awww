#!/usr/bin/env sh
themeline="$(cat ~/nix/mod/os/config.nix | grep 'theme = ')"

for name in {kanso,kantsi,macchiato,blacchiato,lix,everforest,quiet}; do
  if [[ $themeline == *"$name"* ]]; then 
    wallname=$(cat ~/nix/theme/wallpaper.json | jq ".$name")
    wallnamestripped=$(echo "$wallname" | tr -d '"') 
    awww img -t none ~/nix/stuff/wallpapers/$wallnamestripped
  fi
done
