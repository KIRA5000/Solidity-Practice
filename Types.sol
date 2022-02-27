pragma solidity ^0.8.12;

contract Test {
    int num1; // It means int256
    uint num2; // It means uint256
    int8 num3; // it is smaller than int256, you can have from 8 to 256, in multiples of 8
    uint8 num4; // same as int8
    string str1; // you can store a string in it.
    bytes32 str2 = "Hello world"; // you can store bytes
    address addr = address(this);  // this means this instance of our contract, address(this) means address of this instance
    bool flag = true; // you can have bool values too

    struct Person {
        uint id;
        string name;
    }

    Person public p = Person(1, "Mayank");  // In struct you can't provide a default value
                                            // You need to pass all values at time to assigning value
}