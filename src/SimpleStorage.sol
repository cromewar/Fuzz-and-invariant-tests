//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract SimpleStorage {
    uint8 public storedData;

    function setAddition(uint8 x) public {
        storedData = x * 2;
    }
}
