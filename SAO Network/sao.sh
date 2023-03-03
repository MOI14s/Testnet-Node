#!/bin/bash
exists()
{
  command -v "$1" >/dev/null 2>&1
}
if exists curl; then
echo ''
else
  sudo apt update && sudo apt install curl -y < "/dev/null"
fi
bash_profile=$HOME/.bash_profile
if [ -f "$bash_profile" ]; then
    . $HOME/.bash_profile
fi
sleep 1 && curl -s https://raw.githubusercontent.com/MOI14s/MOI14s_Nodes/main/MOI14s.sh | bash && sleep 1

NODE_HOME=$HOME/.saod
BRANCH=testnet0
GIT="https://github.com/SaoNetwork/sao-consensus.git"
GIT_FOLDER=sao-consensus
BINARY=saod
CHAIN_ID=sao-testnet0

if [ ! $VALIDATOR ]; then
    read -p "VALIDATOR NAME: " VALIDATOR
    echo 'export VALIDATOR='\"${VALIDATOR}\" >> $HOME/.bash_profile
fi
echo 'source $HOME/.bashrc' >> $HOME/.bash_profile
source $HOME/.bash_profile
sleep 1

#Package
cd $HOME
sudo apt update
sudo apt install make build-essential -y < "/dev/null"

# Install GO
echo -e '\n\e[42mInstall Go\e[0m\n' && sleep 1
cd $HOME
VERSION=1.19.1
wget -O go.tar.gz https://go.dev/dl/go$VERSION.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go.tar.gz && rm go.tar.gz
echo 'export GOROOT=/usr/local/go' >> $HOME/.bash_profile
echo 'export GOPATH=$HOME/go' >> $HOME/.bash_profile
echo 'export GO111MODULE=on' >> $HOME/.bash_profile
echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> $HOME/.bash_profile && . $HOME/.bash_profile
go version

# Git
echo -e '\n\e[42mInstall software\e[0m\n' && sleep 1
git clone $GIT
cd $GIT_FOLDER && git checkout $BRANCH
make build
which saod
sleep 1
$BINARY init "$VALIDATOR" --chain-id $CHAIN_ID

cd $HOME/.saod/config
wget https://raw.githubusercontent.com/SAONetwork/sao-consensus/testnet0/network/testnet0/config/app.toml
wget https://raw.githubusercontent.com/SAONetwork/sao-consensus/testnet0/network/testnet0/config/client.toml
wget https://raw.githubusercontent.com/SAONetwork/sao-consensus/testnet0/network/testnet0/config/config.toml
wget https://raw.githubusercontent.com/SAONetwork/sao-consensus/testnet0/network/testnet0/config/genesis.json

saod start

echo -e '\n\e[42mCheck node status\e[0m\n' && sleep 1
if [[ `service $BINARY status | grep active` =~ "running" ]]; then
  echo -e "Your $NODE node \e[32minstalled and works\e[39m!"
  echo -e "You can check node status by the command \e[7mservice $BINARY status\e[0m"
  echo -e "Press \e[7mQ\e[0m for exit from status menu"
else
  echo -e "Your $NODE node \e[31mwas not installed correctly\e[39m, please reinstall."
fi
