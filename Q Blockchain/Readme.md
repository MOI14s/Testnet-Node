<p align="center">
<img sizes="(max-width: 600px) 480px, 800px" src="https://raw.githubusercontent.com/MOI14s/Testnet-Node/main/Q%20Blockchain/Q_Blockchain.png"></p>

<p align="center">The future of Governance Has arrived</p>

<div id="badges">
  <p align="center">
   <a href="https://q.org">
  <img src="https://img.shields.io/badge/Website-4285F4?style=for-the-badge&logo=GoogleChrome&logoColor=white&style=flat"/>
  <a href="https://twitter.com/QBlockchain">
    <img src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white&style=flat"/>
  </a>
  <a href="https://discord.com/invite/YTgkvJvZGD">
    <img src="https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white&style=flat"/>
  </a>
  <a href="https://medium.com/q-blockchain">
    <img src="https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white&style=flat"/>
     </a>
  </p>
</div>

## OFFICIAL DOCUMENT
- Docs : https://docs.q.org/
- Run Full Node : https://docs.q.org/how-to-setup-fullnode/


## REQUIREMENTS
> Minimum Hardware Specifications that will be used to run the node
    
| vCPU | RAM | DISK | OS |
| :--  | :-- | :--- | :- |
| 4+ | 16+ | 300+ GB | ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)|

## GETTING STARTED
> Before starting to run, you must first prepare the requirements, such as installing Docker on your vps
#### Update Dependencies
```javascript
sudo apt update && apt upgrade -y
```

#### Set vars for password
```bash
# Set Password
PASSWORD=YOUR_PASSWORD

# Export Password
echo "export PASSWORD=$PASSWORD" $HOME/.bash_profile
source $HOME/.bash_profile
```

#### Download the application binary
```javascript
git clone https://gitlab.com/q-dev/testnet-public-tools.git
cd testnet-public-tools/testnet-validator/
```

#### Create new keystore folder and create pwd file with your password
```javascript
mkdir keystore
cd keystore
echo "$PASSWORD" >> pwd.txt
```

#### Generate new Wallet
> And you'll got some data on your screen, SAVE THE OUTPUT DATA !!
```javascript
cd ..
docker run --entrypoint="" --rm -v $PWD:/data -it qblockchain/q-client:testnet geth account new --datadir=/data --password=/data/keystore/pwd.txt
```

#### Claim Faucet
> Next step is getting some test balance from faucet, go to https://faucet.qtestnet.org/ and claim some test token.

#### Copy Configuration
```bash
cp .env.example .env
nano .env

# Set 
Add Address without 0x, change the version from 1.2.1 to 1.2.2 and add your VPS IP and save settings CTRL+X, Y and ENTER
```

#### Edit Config
```bash
nano config.json

# set
Add Address without 0x and your Password from the beginning and save CTRL+X y and ENTER
```

#### Stake Coin
```
docker run --rm -v $PWD:/data -v $PWD/config.json:/build/config.json qblockchain/js-interface:testnet validators.js
```

#### Export Private-key from address
> export the private key from the address that was generated earlier, this part is very important !!!

```bash
# Install tool needed
cd /root/testnet-public-tools
chmod +x run-js-tools-in-docker.sh
./run-js-tools-in-docker.sh
npm install

# Get private key
chmod +x extract-geth-private-key.js
node extract-geth-private-key <YOUR_WALLET_ADDRESS> ../testnet-validator/ $PASSWORD
```

Next
> And the last step is registering your validator on the stats website, please go to https://itn.qdev.li/ and fill out the form,  after succesfully registered you should receive your validator name. somekind like: --ethstats=ITN-testvalidatorname:qstats-testnet@stats.qtestnet.org

#### Configure the docker
```bash
cd testnet-validator
sudo nano docker-compose.yaml

# Then add "--ethstats=ITN-testvalidatorname:qstats-testnet@stats.qtestnet.org" to :

version:
"3"
services:
testnet-validator-node: image: $QCLIENT_ IMAGE
entrypoint: ["geth", "--ethstats=ITN-testvalidatorname:qstats-testnet@stats.qtestnet.org",
volumes:
./keystore:/data/keystore ./additional:/data/additional
- testnet-validator-node-data: /data ports:
- $EXT PORT: $EXT_ PORT/tcp
- SEXT PORT: $EXT PORT/ udp restart: unless-stopped
volumes:
testnet -validator -node-data:
```

#### Run the Node
```
docker compose up -d
```

#### Check status
Check your validator status on https://stats.qtestnet.org/

## USEFULL COMMANDS
> Some useful commands that can be used to manage and monitor nodes

#### Stop Node
```javascript
docker-compose down
```

#### Check Node logs
```javascript
docker compose logs -f
```

#### Updating Docker Images
```javascript
docker-compose pull
docker-compose up -d
```

## REMOVE NODE
> Please, before deleting Node ! Make sure you have backed up the `keystore` of your wallet
<hr/>
<p align="center"> Copyright ©2023 <b>MOI14s Nodes</b>. All rights reserved.</p>
