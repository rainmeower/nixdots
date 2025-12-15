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
-e 's/.*secret.*//' \
-e 's/.*token.*//' \
-e 's/.*Secret.*//' \
-e 's/.*Token.*//' \
-e 's/.*SECRET.*//' \
-e 's/.*TOKEN.*//' \
~/.config/nushell/history.txt \
~/.config/zsh/.zsh_history \
~/.bash_history \
~/.config/.bash_history
