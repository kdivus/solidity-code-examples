pragma solidity 0.7.5;

contract testArraysFunctions {
    // create array
    uint256[] public testArray;

    // get and remove last element from array
    function remove(uint256 index) public {
        testArray[index] = testArray[testArray.length - 1];
        testArray.pop();
    }

    // add data to array
    function test() public {
        testArray.push(1);
        testArray.push(2);
        testArray.push(3);
        testArray.push(4);
        // after executing this, array wil be equal to 1,2,3,4

        remove(1); // after executing this, array wil be equal to 1,4,3

        // value check with assert
        assert(testArray.length == 3);
        assert(testArray[0] == 1);
        assert(testArray[1] == 4);
        assert(testArray[2] == 3);

        remove(2); // after executing this, array wil be equal to 1,4

        // value check with assert
        assert(testArray.length == 2);
        assert(testArray[0] == 1);
        assert(testArray[1] == 4);
    }
}
