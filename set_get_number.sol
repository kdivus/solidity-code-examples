// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.5;

contract Hello {
    int256 number;

    function getNumber() public view returns (int256) {
        return number;
    }

    function setNumber(int256 _number) public {
        number = _number;
    }
}
