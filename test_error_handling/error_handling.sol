pragma solidity 0.7.5;

// assert should never fail, it should never evaluate to false, if it does we have bug in code
// uses up all the gas

// require - used to validate inputs, preconditions and outputs
// does not use all the gas

// revert(similar to require) - more used for checking some complex conditions check

contract ErrorTesting {
    uint256 public balance;
    uint256 public maxNumber = 2**256 - 1;

    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;

        require(newBalance >= oldBalance, "Balance is not correct!");

        balance = newBalance;

        assert(balance >= oldBalance);
    }

    function withdraw(uint256 _amount) public {
        uint256 oldBalance = balance;

        require(balance >= _amount, "Withdraw error!");

        if (balance < _amount) {
            revert("Balance is not correct!");
        }

        balance -= _amount;
        assert(balance <= oldBalance);
    }
}
