// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimplestorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function testRevertOnOverflow() public {
        uint8 testValue = 128; // This value should cause an overflow.
        vm.expectRevert();
        simpleStorage.setAddition(testValue);
    }

    function testAddsWithoutRevert() public {
        uint8 oneHundred = 128;
        simpleStorage.setAddition(oneHundred);
        (bool success, ) = address(simpleStorage).call(
            abi.encodeWithSignature("setAddition(uint8)", oneHundred)
        );
        assert(success);
    }

    function testFuzzRevertOnOverflow(uint8 testValue) public {
        // uint8 testValue; 👈 This value gets commented
        simpleStorage.setAddition(testValue);
    }
}
