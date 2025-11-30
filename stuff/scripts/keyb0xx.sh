#!/usr/bin/env expect
# FIXME

spawn keyb0xx
expect "Enter a number (or 'a' to show all devices): "
send "0"

sleep 10000
