// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

contract Primitives {
    bool boo = true;

    /*
    * uint stands for unsigned integer, meaning non negative integers different sizes are available
    uint8 ranges from 0 to 2 ** 8 - 1
    uint16 ranges from 0 to 2 ** 16 - 1
    uint256 ranges from 0 to 2 ** 256 - 1
     */

    uint256 u = 123; // alias for uint256
    uint8 u8 = 1;
    uint16 u16 = 456;
    uint256 u256 = 4569;

    /*
    * negative numbers  are allowed for int data types
    like uint, different range numbers are available from int8 to int256
    */
    int8 i8 = 1;
    int16 i16 = 1234;
    int256 i256 = 4321;
    int256 i = 8; // alias for int256

    address addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    // Default values
    // Unassigned variables have a default value
    bool defaultBoo; // false
    uint256 defaultUint; // 0
    int256 defaultInt; // 0
    address defaultAddr; // 0x0000000000000000000000000000000000000000
}
