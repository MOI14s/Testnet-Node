<p align="center">
<img sizes="(max-width: 600px) 480px, 800px" src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Nibiru%20ITN-1/Nibiru.png"></p>

<p align="center">A DeFi hub ushering in the
next era of money</p>
<p align="center">Stake, swap, provide liquidity, and trade perpetual futures.
Powered by Nibiru Chain.</p>
  
<div id="badges">
  <p align="center">
   <a href="https://nibiru.fi">
  <img src="https://img.shields.io/badge/Website-4285F4?style=for-the-badge&logo=GoogleChrome&logoColor=white&style=flat"/>
  <a href="https://twitter.com/NibiruChain">
    <img src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white&style=flat"/>
  </a>
  <a href="https://discord.com/invite/nibiru">
    <img src="https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white&style=flat"/>
  </a>
  </p>
</div>

## OFFICIAL DOCUMENT
- Docs : https://nibiru.fi/docs
- Run Node : https://nibiru.fi/docs/run-nodes/testnet/
- Set Up pricefeeder : https://nibiru.fi/docs/run-nodes/validators/pricefeeder.html
     
## REQUIREMENTS
> Minimum Hardware Specifications that will be used to run the node
    
| vCPU | RAM | DISK | OS |
| :--  | :-- | :--- | :- |
| 4+ | 8+ | 100+ GB | ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)|

## GETTING STARTED
> In the automated script below it is ready to install the required requirements
#### Automatic Installations (Ubuntu 22.04)
You can manage your Nibiru Incentivized Testnet `Fullnodes` easily and quickly via the automated script below
```javascript
wget -q -O Nibiru_ITN1.sh https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Nibiru%20ITN-1/Nibiru_ITN1.sh && chmod +x Nibiru_ITN1.sh && sudo /bin/bash Nibiru_ITN1.sh
```
Next
```javascript
source $HOME/.bash_profile
```
#### Import Keys Wallet
```javascript
nibid keys add <wallet_name> --recover
```

#### Create Validator
```javascript
nibid tx staking create-validator \
  --amount=1000000unibi \
  --chain-id="nibiru-itn-1" \
  --pubkey=$(nibid tendermint show-validator) \
  --commission-rate="0.10" \
  --commission-max-rate="0.20" \
  --commission-max-change-rate="0.01" \
  --min-self-delegation="1" \
  --moniker="<moniker>" \
  --identity="<identity>" \
  --website="<website>" \
  --details="<details>" \
  --fees="5000unibi" \
  --from=<wallet_name> \
  --yes
  ```

#### Sate SYNC
```javascript
sudo systemctl stop nibid
cp $HOME/.nibid/data/priv_validator_state.json $HOME/.nibid/priv_validator_state.json.backup
nibid tendermint unsafe-reset-all --home $HOME/.nibid
```
```javascript
STATE_SYNC_RPC=https://rpc.nibid-itn.nodexcapital.com:443
STATE_SYNC_PEER=d5519e378247dfb61dfe90652d1fe3e2b3005a5b@dymension-testnet.rpc.kjnodes.com:46656
LATEST_HEIGHT=$(curl -s $STATE_SYNC_RPC/block | jq -r .result.block.header.height)
SYNC_BLOCK_HEIGHT=$(($LATEST_HEIGHT - 2000))
SYNC_BLOCK_HASH=$(curl -s "$STATE_SYNC_RPC/block?height=$SYNC_BLOCK_HEIGHT" | jq -r .result.block_id.hash)
```
```javascript
sed -i \
  -e "s|^enable *=.*|enable = true|" \
  -e "s|^rpc_servers *=.*|rpc_servers = \"$STATE_SYNC_RPC,$STATE_SYNC_RPC\"|" \
  -e "s|^trust_height *=.*|trust_height = $SYNC_BLOCK_HEIGHT|" \
  -e "s|^trust_hash *=.*|trust_hash = \"$SYNC_BLOCK_HASH\"|" \
  -e "s|^persistent_peers *=.*|persistent_peers = \"$STATE_SYNC_PEER\"|" \
  $HOME/.nibid/config/config.toml
```
```javascript
mv $HOME/.nibid/priv_validator_state.json.backup $HOME/.nibid/data/priv_validator_state.json
sudo systemctl start nibid && sudo journalctl -u nibid -f --no-hostname -o cat
```

#### Download Addrbook
```javascript
curl -Ls https://ss-t.nibiru.nodestake.top/addrbook.json > $HOME//.nibid/config/addrbook.json
```

#### Download Genesis
```javascript
curl -Ls https://snapshot.yeksin.net/nibiru/genesis.json > $HOME/.nibid/config/genesis.json
```

## USEFULL COMMAND
> Some useful commands that can be used to manage and monitor nodes

**Check Node Info**
```javascript
nibid status 2>&1 | jq .NodeInfo
```
**Check Validator Info**
```javascript
nibid status 2>&1 | jq .ValidatorInfo
```
**Check SYNC Info**
```javascript
nibid status 2>&1 | jq .SyncInfo
```
**Restart Node**
```javascript
systemctl restart nibid
```
**Check Node Logs**
```javascript
sudo journalctl -u nibid -f --no-hostname -o cat
```

## REMOVE NODE
> Please, before deleting Node ! Make sure you have backed up your `priv_validator_key.json`

```javascript
systemctl stop nibid
systemctl disable nibid
rm -rf ~/nibid ~/.nibid /etc/systemd/system/nibid.service
```

<hr/>
<p align="center"> Copyright ©2023 <b>MOI14s Nodes</b>. All rights reserved.</p>
<p align="center"> Thanks to <a href="https://nodes.guru/">Nodes Guru</a> ~ <a href="https://discord.com/users/928575843641479198"> Whyme | NodeX Capital</a> ~ <a href="https://github.com/elangrr"> Indonode</a> ~ <a href="https://github.com/yeksin">Yeksin</a> ~ <a href="https://nodestake.top/"> Nodestake</a>
