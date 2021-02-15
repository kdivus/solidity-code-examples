/* simple contract that you can get, increment and decrement the count store in this contract */

// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract Counter {
    uint256 public count;

    // function to get the current count
    function get() public view returns (uint256) {
        return count;
    }

    // function to increment count by 1
    function inc() public {
        count += 1;
    }

    // function to decrement count by 1
    function dec() public {
        count -= 1;
    }
}
