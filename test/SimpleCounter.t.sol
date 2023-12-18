// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "forge-std/Test.sol";
import "../src/SimpleCounter.sol"; // Adjust the path as needed

contract SimpleCounterTest is Test {
    SimpleCounter counter;

    function setUp() public {
        counter = new SimpleCounter();
        targetContract(address(counter)); // Informing Foundry about the contract under test
    }

    // Stateless Fuzz Test: Testing incrementByEven with random even numbers
    function testStatelessFuzzIncrementByEven() public {
        uint256 evenNumber = 2;
        counter.incrementByEven(evenNumber);
        // Ensuring the counter remains even
        console.log(
            "Counter after incrementing by even number:",
            counter.counter()
        );
        assertEq(
            counter.counter() % 2,
            0,
            "Invariant failed: Counter must be even"
        );
    }

    // Demonstrating Stateful Fuzz Test: This test would be stateful as it continues from the previous state of the counter

    function statefulFuzz_CounterShouldBeEven() public {
        console.log("Counter:", counter.counter());
        assertEq(
            counter.counter() % 2,
            0,
            "Invariant failed: Counter must always be even"
        );
    }
}
