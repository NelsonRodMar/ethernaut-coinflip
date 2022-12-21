import { ethers } from "hardhat";
import {config} from "dotenv";
async function main() {
  const JustCoinFlip = await ethers.getContractFactory("JustCoinFlip");
  const justCoinFlip = await JustCoinFlip.deploy();

  await justCoinFlip.deployed();

  console.log(`JustCoinFlip deployed to ${justCoinFlip.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
