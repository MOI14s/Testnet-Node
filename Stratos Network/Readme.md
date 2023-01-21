<p align="center">
<img sizes="(max-width: 600px) 480px, 800px" src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Stratos%20Network/stratos.svg"></p>

**<p align="center">The Next Generation of Decentralized Data Mesh**

<div id="badges">
  <p align="center">
  <a href="https://www.linkedin.com/company/stratos-network">
    <img src="https://img.shields.io/badge/LinkedIn-blue?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn Badge"/>
  </a>
  <a href="https://twitter.com/Stratos_Network">
    <img src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white"/>
  </a>
  <a href="https://discord.gg/VbhARrDt">
    <img src="https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white"/>
  </a>
  <a href="https://t.me/Stratos_announcement">
    <img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white"/>
  <a href="https://www.reddit.com/r/stratoscommunity/">
    <img src="https://img.shields.io/badge/Reddit-FF4500?style=for-the-badge&logo=reddit&logoColor=white"/>
  </p>
</div>

## REQUIREMENTS
> Minimum Hardware Specifications that will be used to run the node
    
| vCPU | RAM | DISK | OS |
| :--  | :-- | :--- | :- |
| 4 | 16 | 2 TB | ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black) |

## GETTING STARTED
> The operating system must also have Go 1.18+ linux/amd64

### 1. SetUp Environment
```javascript
sudo apt update && apt upgrade
```
```javascript
sudo apt install git build-essential curl snapd --yes
```
```javascript
sudo snap install go --classic
echo 'export GOPATH="$HOME/go"' >> ~/.profile
echo 'export GOBIN="$GOPATH/bin"' >> ~/.profile
echo 'export PATH="$GOBIN:$PATH"' >> ~/.profile
source ~/.profile
```
### 2. Get release binary executable files & Install
```javascript
git clone https://github.com/stratosnet/stratos-chain.git
```
```javascript
cd stratos-chain
```
```javascript
git checkout tags/v0.9.0
```
```javascript
make build
```
```javascript
make install
```
### 3. Initialize your node
```javascript
cd $HOME
```
    
### 4. Download the `genesis.json` and `config.toml` files
```javascript
wget https://raw.githubusercontent.com/stratosnet/stratos-chain-testnet/main/genesis.json
```
```javascript
wget https://raw.githubusercontent.com/stratosnet/stratos-chain-testnet/main/config.toml
```

### 5. Move the downloaded `config.toml` and genesis.json files to `$HOME/.stchaind/config/`
```javascript
mv config.toml $HOME/.stchaind/config/
```
```javascript
mv genesis.json $HOME/.stchaind/config/
```
