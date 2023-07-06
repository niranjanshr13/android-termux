declare -A kv

kv["sshd"]="openssh"
kv["cloudflared"]="cloudflared"

for key in ${!kv[@]}; do
    if [[ ! -f /data/data/com.termux/files/usr/bin/${key} ]]
    then
        pkg install ${kv[${key}]}
    fi
done