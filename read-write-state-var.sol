// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract SimpleStorage {
    // state variable to store a number
    uint256 public num;

    // you need to send a transaction to write to a state variable
    function set(uint256 _num) public {
        num = _num;
    }

    // you can read from a state variable without sending a transaction
    function get() public view returns (uint256) {
        return num;
    }
}
