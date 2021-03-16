pragma solidity 0.7.5;

contract arraysInit {
    uint[] public myArray;
    uint[5] public myArray2;
    uint[] public myArray3 = [1,2,3];
    
    function push(uint i) public {
        myArray3.push(i);
    }
    
    function pop() public {
         myArray3.pop();
    }
    
    function length() public view returns(uint){
        return myArray3.length;
    }
    
    function remove(uint index) public {
        delete myArray3[index];
    }
}
