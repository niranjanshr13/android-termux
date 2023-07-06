#!/bin/bash
TRANSFER_PATH="~/storage/shared/.automation"
rm -rfv $TRANSFER_PATH

mkdir $TRANSFER_PATH
mv ~/bin/data/ $TRANSFER_PATH