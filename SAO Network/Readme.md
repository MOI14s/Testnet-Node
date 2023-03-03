<p align="center">
<img sizes="(max-width: 600px) 480px, 800px" src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/SAO%20Network/SAO.png"></p>
  
<div id="badges">
  <p align="center">
   <a href="https://www.sao.network/">
  <img src="https://img.shields.io/badge/Website-4285F4?style=for-the-badge&logo=GoogleChrome&logoColor=white&style=flat"/>
  <a href="https://twitter.com/SAONetwork">
    <img src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white&style=flat"/>
  </a>
  <a href="https://discord.gg/e4rxmgK7">
    <img src="https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white&style=flat"/>
  </a>
  </p>
</div>

## OFFICIAL DOCUMENTS
- Docs : https://docs.sao.network/
- Run Node : https://docs.sao.network/participate-in-sao-network
- Faucet : https://faucet.testnet.sao.network/
     
## REQUIREMENTS
> Minimum Hardware Specifications that will be used to run the node
    
| vCPU | RAM | DISK | OS |
| :--  | :-- | :--- | :- |
| 4+ | 8+ | 100+ GB | ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)|

## GETTING STARTED
> In the automated script below it is ready to install the required requirements
#### Automatic Installations (Ubuntu 22.04)
You can manage SAO Network Incentivized Testnet `Consensus Node` easily and quickly via the automated script below
```javascript

```
Next
```javascript
source $HOME/.bash_profile
```
#### Import Keys Wallet
```javascript
saod keys add <wallet_name> --recover
```

#### Create Validator
```javascript
saod tx staking create-validator \
  --amount=10000000sao \
  --pubkey=$(saod tendermint show-validator) \
  --moniker="<your moniker>" \
  --chain-id=sao-testnet0 \
  --commission-rate="0.10" \
  --commission-max-rate="0.20" \
  --commission-max-change-rate="0.01" \
  --min-self-delegation="1000000" \
  --gas="2000000" \
  --gas-prices="0.0025sao" \
  --from=<wallet name>
  ```
