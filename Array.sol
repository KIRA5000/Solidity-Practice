pragma solidity >=0.8.12 <0.9.0;

// In Solidity while dealing with arrays we have concept's of storing location
// We have 3 keywords which specify where value will be stored
// 1. storage : this value will be persistent
// 2. memory : this value will only last till the execution, it mutable and non persistent
// 3. calldata(little bit unclear) : it is only used as parameter of external function, it's immutable and non persistent

// Data location can only be specified for array, struct or mapping types

contract Test {
    int[5] staticArray; // An array with fixed size that is 5
    int[] dynamicArray; // Declared a dynamic array which can be initialized by new keyword

    function setDynamicArray(int _value) public {
        dynamicArray.push(_value);
    }

    function getStaticArray(uint _pos) public view returns(int) { // Here index is uint because solidity expects an index to be unsigned, int will throw an error
        int ret = staticArray[_pos];
        return ret;
    }

    function getDynamicArray() public view returns(int[] memory) {
        return dynamicArray;
    }

    function getStaticArray() public returns(int[5] memory) {
        staticArray = [int(1), 2, 3, 4, 5];  // By type cast just first element gave compiler the idea that every value is int 
        return staticArray;
    }

    function getStaticArraySize() public view returns(uint) {
        return staticArray.length;
    }
}