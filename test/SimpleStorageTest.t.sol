// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimplestorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function testSetAdditionValid() public {
        uint8 testValue = 128; // This value we want to test.
        console.log("Test value is: ", testValue);
        simpleStorage.setAddition(testValue);
        assert(simpleStorage.storedData() < 255);
        console.log("Stored data is: ", simpleStorage.storedData());
    }

    function testSetAdditionValidFuzz(uint8 testValue) public {
        // uint8 testValue = 128; Commented value
        console.log("Test value is: ", testValue);
        simpleStorage.setAddition(testValue);
        assert(simpleStorage.storedData() < 255);
        console.log("Stored data is: ", simpleStorage.storedData());
    }
}
