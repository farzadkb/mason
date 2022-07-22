#!/bin/bash
echo "=================================================="
sleep 1
echo "======== Install update and upgrade =============="
sudo apt-get update -y && sudo apt-get install wget -y
sleep 1
wget https://staticassets.meson.network/public/meson_cdn/v3.1.18/meson_cdn-linux-amd64.tar.gz
tar -zxf meson_cdn-linux-amd64.tar.gz
sleep 1
rm -f meson_cdn-linux-amd64.tar.gz
sleep 1
cd ./meson_cdn-linux-amd64
sleep 1
sudo ./service install meson_cdn
sleep 1
echo "======== config meson =============="
sudo ./meson_cdn config set --token=ahckkeketftrzghnnntoezty --https_port=443 --cache.size=100
sleep 1
echo "======== start meson =============="
sudo ./service start meson_cdn
sleep 1
echo "======== install and start completed =============="
