# JustCoinFlip

This project is my answer to [Ethernaut](https://ethernaut.openzeppelin.com/) CoinFlip challenge. <br/>
The goal is to guess on wich side the coin will be flip and send the result to the contract increase the consecutiveWins variable and win the game.

## Setup

1. Install dependencies

```bash
npm install
```

2. Copy `.env.example` to `.env` and fill it with your Alchemy API key. You can get one for free at [alchemy.com](https://www.alchemy.com/). And fill it with your Private Key.

3. Run this command to deploy :

```shell
npx hardhat run scripts/deploy.ts --network goerli
```

4. Install cast for free at [getfoundry.sh](https://book.getfoundry.sh/getting-started/installation) and then run this command to call the function as much time as you want :

```shell

```shell
cast send --private-key PRIVATE_KEY ADDRESS_OF_DEPLOYED_CONTRACT "flipTheCoin(address)" "ADDRESS_OF_THE_CONTRACT_CoinFlip" --rpc-url URL_ALCHEMY_GOERLI
```
