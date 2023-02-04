
<p align="center">
<img sizes="(max-width: 600px) 480px, 800px" src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Shardeum%20Betanet/shardeum.png"></p>

<p align="center">Shardeum is a blockchain that supports EVM smart contracts.
  
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

## REQUIREMENTS
> Minimum Hardware Specifications that will be used to run the node
    
| vCPU | RAM | DISK | OS |
| :--  | :-- | :--- | :- |
| 4+ | 8+ | 60 GB+ | ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black) ![macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)|

## GETTING STARTED
> The operating system must also have <img src="https://img.shields.io/badge/Docker%20Image-4285F4?style=for-the-badge&logo=docker&logoColor=white&style=flat"/> (version 20.10.12 or higher) & <img src="https://img.shields.io/badge/Docker%20Compose-4285F4?style=for-the-badge&logo=docker&logoColor=white&style=flat"/> installed

### 1. Clone Repository & SetUp Dashboard
```bash
curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh && chmod +x installer.sh && ./installer.sh
```
    
> Enter y to setup the web based dashboard:
    
```javascript
Do you want to run the web based Dashboard? (y/n): y 
Set the password to access the Dashboard: (Set Your Password)
Add a custom session port for the web based dashboard or hit enter for port 8080: (enter for default port)
What base directory should the node use (defaults to ~/.shardeum): (enter for defaults)
```

### 2. Open Validator CLI
```bash
$HOME/.shardeum/shell.sh
```
### 3. Open Validator GUI    
```
operator-cli gui start
```
### 4. Go to web browser to enter Dashboard
```bash
https://YOURIPVPS:8080/maintenance
```
<img src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Shardeum%20Betanet/11.png"/>

```bash
click the “Start Node” button or run command "operator-cli start" on server
```

<img src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Shardeum%20Betanet/12.png"/>

```bash
Claim Faucet SHM "https://docs.shardeum.org/faucet/claim" and Stake SHM
```

<img src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Shardeum%20Betanet/13.png"/>

<img src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Shardeum%20Betanet/14.png"/>
