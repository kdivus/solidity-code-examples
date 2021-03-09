// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.5;

contract DataLocation {
    // 1. storage data location
    // permanent storage of data - data that is persistent over time and over function executions

    // 2. memory data location - used to store temporary data
    // used in variables within functions and for arguments
    // stored temporary as long as the functions executes, it is not necessary to store data that is only used for example once when you call a function
    // for simple data types we don't need to put keyword memory in front of the word becaues they are always stored in memory(value data types are always in memory)
    // for string - it can be storage(it can be complex data type) type, because we can make a reference to it, like in C++!

    // callData

    uint256 data = 4568; //example of storage data -> state variable

    function getString(string memory text, uint256 number)
        public
        pure
        returns (string memory)
    {
        return text;
    }
}
