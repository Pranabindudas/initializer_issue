// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "forge-std/Test.sol";
import "../src/WithoutInitializer.sol";

contract WithoutInitializerTest is Test {
    WithoutInitializer public w;

    function setUp() public {
        w = new WithoutInitializer();
    }

    function testInitMultipleTimes() public {
        w.init(address(1), 100);
        assertEq(w.owner(), address(1));
        assertEq(w.value(), 100);

        // re-initialization allowed
        w.init(address(2), 200);
        assertEq(w.owner(), address(2));
        assertEq(w.value(), 200);
    }
}
