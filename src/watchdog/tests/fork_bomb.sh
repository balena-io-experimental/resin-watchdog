#!/bin/bash

# Yes, this is a fork-bomb script and using it will most likely take the
# machine down! YOU HAVE BEEN WARNED!
#
# See http://en.wikipedia.org/wiki/Fork_bomb
#
#
# (c) Paul S Crawford 2013, released under GPLv2 licence.
# Absolutely no warranty! Use at your own risk.
#
# See also:
# http://www.sat.dundee.ac.uk/~psc/watchdog/Linux-Watchdog.html

bomb(){
#sleep 0.01
bomb | bomb &
}; bomb
