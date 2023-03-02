<p align="center">
<img sizes="(max-width: 600px) 480px, 800px" src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Shardeum%20Betanet/shardeum.png"></p>

<p align="center">Shardeum is a blockchain that supports EVM smart contracts.</p>
  
<div id="badges">
  <p align="center">
   <a href="https://shardeum.org">
  <img src="https://img.shields.io/badge/Website-4285F4?style=for-the-badge&logo=GoogleChrome&logoColor=white&style=flat"/>
  <a href="https://twitter.com/shardeum">
    <img src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white&style=flat"/>
  </a>
  <a href="https://discord.gg/shardeum">
    <img src="https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white&style=flat"/>
  </a>
  <a href="https://telegram.me/shardeum">
    <img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white&style=flat"/>
  <a href="https://www.reddit.com/r/shardeum/">
    <img src="https://img.shields.io/badge/Reddit-FF4500?style=for-the-badge&logo=reddit&logoColor=white&style=flat"/>
  </p>
</div>

## OFFICIAL DOCUMENT
- Docs : https://docs.shardeum.org/
- Run Validator : https://docs.shardeum.org/node/run/validator
- Claim Faucet : https://docs.shardeum.org/faucet/claim
     
## REQUIREMENTS
> Minimum Hardware Specifications that will be used to run the node
    
| vCPU | RAM | DISK | OS |
| :--  | :-- | :--- | :- |
| 4+ | 8+ | 60 GB+ | ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)|

## GETTING STARTED
> The operating system must also have <img src="https://img.shields.io/badge/Docker%20Image-4285F4?style=for-the-badge&logo=docker&logoColor=white&style=flat"/> (version 20.10.12 or higher) & <img src="https://img.shields.io/badge/Docker%20Compose-4285F4?style=for-the-badge&logo=docker&logoColor=white&style=flat"/> installed

#### Clone Repository & SetUp Dashboard
```javascript
curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh && chmod +x installer.sh && ./installer.sh
```
    
#### Enter y to setup the web based dashboard:
    
```javascript
Do you want to run the web based Dashboard? (y/n): y 
Set the password to access the Dashboard: (Set Your Password)
Enter the port (1025-65536) to access the web based Dashboard (default 8080): (enter for default port)
This allows p2p communication between nodes. Enter the first port (1025-65536) for p2p communication (default 9001): (enter for default)
Enter the second port (1025-65536) for p2p communication (default 10001): (enter for default)
What base directory should the node use (defaults to ~/.shardeum): (enter for default)
```

#### Open Validator CLI
```javascript
$HOME/.shardeum/shell.sh
```
#### Open Validator GUI    
```javascript
operator-cli gui start
```
#### Go to web browser to enter Dashboard
```javascript
https://YOURIPVPS:8080/maintenance
```
<img src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Shardeum%20Betanet/11.png"/>

#### Start Node Validator
click the `Start Node` button or run command `operator-cli start` on Terminal

<img src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Shardeum%20Betanet/12.png"/>

#### Claim faucet SHM & stake SHM as Validator 
Go to `https://docs.shardeum.org/faucet/claim` for claim SHM

<img src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Shardeum%20Betanet/15.png"/>

## USEFULL COMMANDS
> Before running the command, must first go to `$HOME/.shardeum/shell.sh`

**Stop your Node**
```javascript
operator-cli stop
```

**Update Node**
```javascript
operator-cli update
```

**Check your Node status**
```javascript
operator-cli status
```
     
**Set new password for Dashboard**
```javascript
operator-cli gui set password <type_new_password__here>
```

<hr/>
<p align="center"> Copyright ©2023 <b>MOI14s Nodes</b>. All rights reserved.</p>
