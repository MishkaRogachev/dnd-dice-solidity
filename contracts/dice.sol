// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Dice {
    uint counter = 1;

    function random() private returns (uint) {
        counter++;
        return uint(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, counter)));
    }

    function roll(uint faces) public returns (uint) {
        return random() % faces;
    }
}