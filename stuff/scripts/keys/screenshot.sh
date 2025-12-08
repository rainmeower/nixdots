#!/usr/bin/env nu

let file = "/tmp/" + (uuidgen) + ".png"
wayshot -s (slurp) -f $file
wl-copy -t text/uri-list file://($file)
