// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimplestorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function testAddsWithoutRevert() public {
        uint8 testValue = 128;
        simpleStorage.setAddition(testValue);
        (bool success, ) = address(simpleStorage).call(
            abi.encodeWithSignature("setAddition(uint8)", testValue)
        );
        assert(success);
    }
}
