#!/bin/bash
TRANSFER_PATH="$HOME/storage/shared/.automation"
rm -rfv $TRANSFER_PATH

mkdir $TRANSFER_PATH
mv $HOME/android-termux/bin/data/* $TRANSFER_PATH
rm -f $HOME/bin/bin/transfer.sh