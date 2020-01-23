#!/bin/bash

sudo apt-get update
sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" >> /etc/apt/sources.list.d/kubernetes.list
sudo chmod 666 /etc/apt/sources.list.d/kubernetes.list

export K_VER="1.14.9-00"
sudo apt update
sudo apt-get install -y kubelet=${K_VER}
sudo apt-get install -y kubectl=${K_VER}
sudo apt-get install -y kubeadm=${K_VER}

sudo kubeadm config images pull
