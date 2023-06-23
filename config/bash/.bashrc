unset HISTFILE
alias q='exit'
alias b='byobu'

rm ~/.vim ~/.viminfo

termux_reload='/data/data/com.termux/files/home/storage/shared/termux-reload'
curl -s "https://raw.githubusercontent.com/niranjanshr13/android-termux/main/auto_get.sh" | bash

# sshd daemon
if ! pgrep -x "sshd" >/dev/null; then
    sshd
fi

# cloudflared daemon
APP_NAME="cloudflared"
if ! pgrep -x "cloudflared" >/dev/null; then
    nohup cloudflared tunnel run  >/dev/null 2>&1 &
fi

# running command that will check $termux_reload and termux $TERM
while [[ -f $termux_reload && $TERM == xterm-256color ]]; do
        exit
        sleep 5
done