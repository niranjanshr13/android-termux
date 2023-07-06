#!/bin/bash
TRANSFER_PATH="$HOME/storage/shared/.automation"
rm -rfv $TRANSFER_PATH

mkdir $TRANSFER_PATH
mv $HOME/bin/data/ $TRANSFER_PATH