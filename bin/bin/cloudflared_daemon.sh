#!/bin/bash
while :
do
    if ! pgrep -x "cloudflared" >/dev/null; then
        nohup cloudflared tunnel run >/dev/null 2>&1 &
    else
        sleep 60
    fi
    sleep 10
done