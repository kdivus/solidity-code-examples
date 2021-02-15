// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract Variables {
    // state variables are stored on the blockchain
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething() public {
        // local variables are not stored to the blockchain
        uint256 i = 234;

        // global variables examples
        uint256 timestamp = block.timestamp; // current block timestamp
        address sender = msg.sender; // address of the caller
    }
}
