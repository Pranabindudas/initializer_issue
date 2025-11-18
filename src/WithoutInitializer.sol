// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract WithoutInitializer {
    address public owner;
    uint256 public value;

    function init(address _owner, uint256 _value) external {
        owner = _owner;
        value = _value;
    }
}
