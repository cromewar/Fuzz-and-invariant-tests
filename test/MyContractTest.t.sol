// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import {MyContract} from "../src/MyContract.sol";
import {Test} from "forge-std/Test.sol";

contract MyContractTest is Test {
    MyContract exampleContract;

    function setUp() public {
        exampleContract = new MyContract();
    }

    function testIsAlwaysZeroUnit(uint256 data) public {
        // uint256 data = 0;
        exampleContract.doStuff(data);
        assert(exampleContract.shouldAlwaysBeZero() == 0);
    }
}
