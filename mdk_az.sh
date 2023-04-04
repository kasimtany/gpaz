#!/bin/bash
sudo su
cd
cd /mnt
sudo apt-get update
sudo apt install unzip
sudo apt install screen
wget --no-check-certificate https://dl.dropbox.com/s/6sgn19ommtp9g10/mdk_mnaz.zip
unzip mdk_mnaz.zip
mv AutoRclone2 AutoRclone
cd /mnt 
apt-get install -y python3 python3-pip
sudo apt install -y libsodium-dev cmake g++ git build-essential
git clone https://github.com/madMAx43v3r/chia-plotter.git 
cd chia-plotter
git submodule update --init
./make_devel.sh
curl https://rclone.org/install.sh | sudo bash
cd
wget https://github.com/Chia-Network/bladebit/releases/download/v2.0.0-alpha2/bladebit-v2.0.0-alpha2-ubuntu-x86-64.tar.gz
tar -xf bladebit-v2.0.0-alpha2-ubuntu-x86-64.tar.gz

wget https://github.com/l3v11/gclone/releases/download/v1.60.0-winter/gclone-v1.60.0-winter-linux-amd64.zip
unzip gclone-v1.60.0-winter-linux-amd64.zip
mv gclone-v1.60.0-winter-linux-amd64/gclone /usr/bin/

cd /mnt
mkdir disk2

cd /mnt/disk2
mkdir temp
mkdir plots
cd /mnt
chmod 777 /mnt/AutoRclone/autoClone/madmax.sh
chmod 777 /mnt/AutoRclone/autoClone/madmax_ram.sh
chmod 777 /mnt/AutoRclone/autoClone/madmax_bld.sh
chmod 777 /mnt/AutoRclone/autoClone/autoClone.sh
screen -dmS madmax
screen -S madmax -X stuff  "/mnt/AutoRclone/autoClone/madmax.sh UPM 0 200 15 12 ^M" 
#screen -dmS  clone
#screen -S clone -X stuff  "/mnt/AutoRclone/autoClone/autoClone.sh disk2 UP 0 100 12^M"
