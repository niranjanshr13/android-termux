#!/bin/bash
pkg install -y cloudflared
cloudflared login
cloudflared tunnel create tunnel-name
TEMP_TUNNEL=$(ls ~/.cloudflared/*.json)
echo "tunnel: $(echo $TEMP_TUNNEL | cut -d '/' -f8 | cut -d '.' -f1)
credentials-file: $TEMP_TUNNEL" > ~/.cloudflared/config.yaml