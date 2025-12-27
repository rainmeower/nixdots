#!/usr/bin/env nu
# TODO screenshot window with mmsg -x

let file = "/tmp/" + (uuidgen) + ".png"
wayshot -s (slurp) -f $file
wl-copy -t text/uri-list file://($file)
