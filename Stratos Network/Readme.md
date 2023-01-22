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
Replace <your_node_moniker> with your node name
```javascript
./stchaind init "<your_node_moniker>"
```
### 4. Download the `genesis.json` and `config.toml` files
```javascript
wget https://raw.githubusercontent.com/stratosnet/stratos-chain-testnet/main/genesis.json
```
```javascript
wget https://raw.githubusercontent.com/stratosnet/stratos-chain-testnet/main/config.toml
```
Move the downloaded `config.toml` and `genesis.json` files
```javascript
mv config.toml $HOME/.stchaind/config/
```
```javascript
mv genesis.json $HOME/.stchaind/config/
```
Change `moniker` in the downloaded `config.toml` file
```bash
nano config.toml
moniker = "<your_node_moniker>"

# After edit `ctrl+x' 'y' 'enter'
```

### 5. Run node in background
```javascript
cd $HOME
```
```javascript
./stchaind start 2>&1 >> chain.log &
```
Use the following Linux Command to stop your node.
```javascript
pkill stchaind
```
### 6. Check the status of the node
```javascript
./stchaind status
```
The output will be similar to
```javascript
./stchaind status
{
    "NodeInfo": {
        "protocol_version": {
            "p2p": "8",
            "block": "11",
            "app": "0"
        },
        "id": "16a0758d175cbf5c08d41dffa73eb5c0190869ed",
        "listen_addr": "tcp://0.0.0.0:26656",
        "network": "test-chain",
        "version": "0.34.21",
        "channels": "40202122233038606100",
        "moniker": "node",
        "other": {
            "tx_index": "on",
            "rpc_address": "tcp://127.0.0.1:26657"
        }
    },
    "SyncInfo": {
        "latest_block_hash": "697A2DB243E5191C6D85285A2ADD4924526924969C6C70FE71827C9FE41D4373",
        "latest_app_hash": "E978F87BB23D351B853F5F0CF9FBBBA4464FF5D7CE3746BF3E2357F28CBCE041",
        "latest_block_height": "497",
        "latest_block_time": "2023-01-11T01:10:37.562405326Z",
        "earliest_block_hash": "139676534FECFA507D56A06B03BD528E70ACA6D4DB6560219707011966613DE4",
        "earliest_app_hash": "E3B0C44298FC1C149AFBF4C8996FB92427AE41E4649B934CA495991B7852B855",
        "earliest_block_height": "1",
        "earliest_block_time": "2023-01-09T17:08:58.4890503Z",
        "catching_up": false
    },
    "ValidatorInfo": {
        "Address": "18A7169C1B427D994133F7B3D4504E92789DB37C",
        "PubKey": {
            "type": "tendermint/PubKeyEd25519",
            "value": "69gothWTE9FJBZ5gBjjSNhg8y/5SsI1hBaD81Dum7lo="
        },
        "VotingPower": "500000"
    }
}
```
