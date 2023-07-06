#!/bin/bash
RCLONE_CONFIG_PATH="$HOME/custom/config/rclone.conf"
BACKUP_PATH="$HOME/storage/shared/tinycammon/Recordings/"
while :
do
rclone --config $RCLONE_CONFIG_PATH --include *sec*.mp4 move $BACKUP_PATH tinycam:cams/
sleep 10
done