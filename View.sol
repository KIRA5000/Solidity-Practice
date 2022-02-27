pragma solidity ^0.8.12;

// This code is not supposed to work
// view states that you will use this function to not alter state of contract, ie just for viewing purpose

contract Test {
    int count;

    constructor(int _count) public {
        count = _count;
    }

    function setCount(int _count) public view {
        count = 3;  // This will throw an error as method has view constraint
    }

    function getCount() public view returns(int) {
        return count;
    }
}