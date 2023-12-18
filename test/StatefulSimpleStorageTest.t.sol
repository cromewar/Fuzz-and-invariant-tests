// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import {Test} from "forge-std/Test.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimplestorageTest is StdInvariant, Test {
    SimpleStorage simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
        targetContract(address(simpleStorage));
    }

    function invariant_testSetAddition() public view {
        assert(simpleStorage.storedData() <= 256);
    }
}
