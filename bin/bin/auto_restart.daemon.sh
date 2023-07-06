#!/bin/bash

# running command that will check $termux_reload and termux $TERM
# just in background on host shell.

termux_reload="$HOME/storage/shared/termux-reload"
while [[ -f $termux_reload && $TERM == xterm-256color ]]; do
        exit
        sleep 5
done