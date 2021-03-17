pragma solidity 0.8.0;
pragma abicoder v2;
import "./Ownable.sol";
import "./SafeMath.sol";

// Solidity versions below 0.8.0 must use safemath, from 0.8.0 safemath is optional
// https://docs.soliditylang.org/en/latest/080-breaking-changes.html?highlight=safemath#

contract Bank is Ownable {
    using SafeMath for uint256;

    mapping(address => uint256) balance;
    address[] customers;

    event depositDone(uint256 amount, address indexed depositedTo);

    function deposit() public payable returns (uint256) {
        balance[msg.sender] = balance[msg.sender].add(msg.value);
        emit depositDone(msg.value, msg.sender);
        return balance[msg.sender];
    }

    function withdraw(uint256 amount) public onlyOwner returns (uint256) {
        require(balance[msg.sender] >= amount);
        balance[msg.sender] = balance[msg.sender].sub(amount);
        payable(msg.sender).transfer(amount);
        return balance[msg.sender];
    }

    function getBalance() public view returns (uint256) {
        return balance[msg.sender];
    }

    function transfer(address payable recipient, uint256 amount) public {
        require(balance[msg.sender] >= amount, "Balance not sufficient");
        require(msg.sender != recipient, "Don't transfer money to yourself");

        uint256 previousSenderBalance = balance[msg.sender];

        _transfer(msg.sender, recipient, amount);

        assert(balance[msg.sender] == previousSenderBalance - amount);
    }

    function _transfer(
        address from,
        address to,
        uint256 amount
    ) private {
        balance[from] = balance[from].sub(amount);
        balance[to] = balance[to].add(amount);
    }
}
