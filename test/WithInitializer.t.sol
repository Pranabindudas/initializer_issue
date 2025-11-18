// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "forge-std/Test.sol";
import "../src/WithInitializer.sol";

contract WithInitializerTest is Test {
    WithInitializer public w;

    function setUp() public {
        w = new WithInitializer();
        w.init(address(1), 100);
    }

    function test_FirstInitWorks() public {
        assertEq(w.owner(), address(1));
        assertEq(w.value(), 100);
    }

    // ❗ FIXED: No more testFail_
    function test_RevertWhen_Reinitialized() public {
        vm.expectRevert();
        w.init(address(2), 200);
    }
}
