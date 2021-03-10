// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.5;

contract Hello {
    mapping(address => uint256) balance;

    function addBalance(uint256 _ToAdd) public returns (uint256) {
        balance[msg.sender] += _ToAdd;
        return balance[msg.sender];
    }

    function getBalance() public view returns (uint256) {
        return balance[msg.sender];
    }
}
