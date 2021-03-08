// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.5;

contract Hello {
    string message;

    constructor(string memory _message) {
        message = _message;
    }

    function hello(string memory number) public view returns (string memory) {
        if (msg.sender == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4) {
            return "correct";
        } else {
            return "wrong address";
        }
    }
}
