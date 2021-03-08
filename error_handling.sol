// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.5;

contract Bank {
    mapping(address => uint256) balance;
    address owner;
    
    constructor(){
        owner = msg.sender;
    }

    function addBalance(uint256 _ToAdd) public returns (uint256) {
        require(msg.sender == owner);
        balance[msg.sender] += _ToAdd;
        return balance[msg.sender];
    }

    function getBalance() public view returns (uint256) {
        return balance[msg.sender];
    }

    function transfer(address recipient, uint256 amount) public {
        require(balance[msg.sender] >= amount, "Balance not sufficient!");
        require(msg.sender != recipient, "Transfering money to yourself is forbidden!");
        
        uint256 previousSenderBalance = balance[msg.sender];
        
        _transfer(msg.sender, recipient, amount);
        
        assert(balance[msg.sender] == previousSenderBalance - amount);
    }

    // it is common to internal function name with underscore
    function _transfer(
        address from,
        address to,
        uint256 amount
    ) private {
        balance[from] -= amount;
        balance[to] += amount;
    }
}

