// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

// @author NelsonRodMar.lens
contract JustCoinFlip is Ownable {
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(){}

    function flipTheCoin(address _contractCoinFlip) public onlyOwner {

        uint256 blockValue = uint256(blockhash(block.number - 1));

        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        (bool success, ) =  _contractCoinFlip.call(
            abi.encodeWithSignature("flip(bool)", side)
        );
        require(success, "flip call failed");
    }
}
