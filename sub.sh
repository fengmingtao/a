#!/bin/bash

cd /mnt/
wget https://github.com/subspace/subspace/releases/download/gemini-3h-2024-mar-29/subspace-farmer-ubuntu-x86_64-skylake-gemini-3h-2024-mar-29
mv subspace-farmer-ubuntu-x86_64-skylake-gemini-3h-2024-mar-29 farmer 
chmod a+x farmer
mkdir /mnt/farm
mkdir /mnt/farm2
screen -d -m -S farm bash -c './farmer farm --reward-address stBhAuK2hGduZhsX2WHFw5o7E3w4cfxaLe79FafNBVgFAzTBZ path=/mnt/farm,size=3TB --node-rpc-url=ws://104.238.220.70:9944'