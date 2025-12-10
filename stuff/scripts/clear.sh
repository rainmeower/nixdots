#!/usr/bin/env dash

# clipse -clear &
wl-copy --clear &
vicinae vicinae://extensions/vicinae/clipboard/clear &
# rm ~/.config/clipse/tmp_files/* &
rm -r ~/.cache/thumbnails/* &
rm /tmp/yazi-1000/* &
rm ~/.local/share/recently-used.xbel &
find ~/.cache/zen -iname "*.png" | xargs rm &
find ~/.cache/mozilla/firefox  -iname "*.png" | xargs rm &

# remove stuff from shell history
sed -i \
-e 's/^rm .*//' \
-e 's/.* rm$//' \
-e 's/.*shred.*//' \
-e 's/.*reboot.*//' \
-e 's/.*shutdown.*//' \
-e 's/.*poweroff.*//' \
~/.config/nushell/history.txt \
~/.bash_history \
~/.config/.bash_history
