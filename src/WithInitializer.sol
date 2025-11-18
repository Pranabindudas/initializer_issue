// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract WithInitializer is Initializable {
    address public owner;
    uint256 public value;

    function init(address _owner, uint256 _value) external initializer {
        owner = _owner;
        value = _value;
    }
}
