// SPDX-License-Identifier: MIT

import {Test} from "forge-std/Test.sol";
import {AlwaysEven} from "../src/AlwaysEven.sol";

pragma solidity ^0.8.12;

contract AlwaysEvenSateless is Test {
    AlwaysEven alwaysEven;

    function setUp() public {
        alwaysEven = new AlwaysEven();
    }

    function testIsAlwaysEvenStatelessFuzz(uint256 data) public {
        // uint256 data = 0;
        alwaysEven.setEvenNumber(data);
        assert(alwaysEven.alwaysEvenNumber() % 2 == 0);
    }
}
