// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.5;

contract Hello {
    struct Person {
        uint256 age;
        string name;
    }

    Person[] people;

    function addPerson(uint256 _age, string memory _name) public {
        Person memory newPerson = Person(_age, _name);
        people.push(newPerson);
    }

    function getPerson(uint256 _index)
        public
        view
        returns (uint256, string memory)
    {
        Person memory personToReturn = people[_index];
        return (personToReturn.age, personToReturn.name);
    }
}
