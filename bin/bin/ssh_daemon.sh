#!/bin/bash
while :
do

    if ! pgrep -x "sshd" >/dev/null; then
        sshd
    else
        sleep 10
    fi

done

