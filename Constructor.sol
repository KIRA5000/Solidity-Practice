pragma solidity ^0.8.12;

// Solidity only supports one constructor per contract
// Defore deloping constructor initialization is done, hence it's not part for final deployed code 

contract Test {
    uint count;
    // unint count = 0;    Instead of using constructor we can directly initialize state of contract

    constructor() public {
        count = 0;
    }

    function incrementCount() public {
        count++;
    }

    function getCount() public view returns(uint) {  // We don't need a get method if we make out state variable public
        return count;                                // ie like 'uint public count;';
    }
}