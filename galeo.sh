apt-get update
apt install -y screen
apt install -y nano
wget https://github.com/atsenax/tangnem/releases/download/v2.4.3/nx100.tar
tar -xf nx100.tar
rm -rf nx100.tar
read -p "nama worker: " WORKER
variable5=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv nx100 $variable5
screen -dmS apool ./$variable5 --account CP_smm --pool qubic2.hk.apool.io:3334 --worker $WORKER
echo apool DONE 100 %

