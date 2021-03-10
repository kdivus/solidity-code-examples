// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.5;

import "./Ownable.sol";

contract Bank is Ownable {
    
    mapping(address => uint256) balance;
    
    event depositDone(uint256 amount, address indexed depositedTo);

    function deposit() public payable returns (uint256){
        balance[msg.sender] += msg.value;
        emit depositDone(msg.value, msg.sender);
        return balance[msg.sender];
    }
    
    function withdraw(uint256 amount) public onlyOwner returns(uint256){
        // msg.sender is an payable address
        // transfer has built in error handling
        msg.sender.transfer(amount);
    }

    function getBalance() public view returns (uint256) {
        return balance[msg.sender];
    }

    function transfer(address recipient, uint256 amount) public {
        require(balance[msg.sender] >= amount, "Balance not sufficient!");
        require(
            msg.sender != recipient,
            "Transfering money to yourself is forbidden!"
        );

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
