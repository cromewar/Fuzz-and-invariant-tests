// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract SimpleCounter {
    uint256 public counter;

    function incrementByEven(uint256 evenNumber) public {
        if (evenNumber % 2 == 0) {
            counter += evenNumber;
        }
    }
}
