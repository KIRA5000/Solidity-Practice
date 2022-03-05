pragma solidity ^0.8.12;

// conditionals and loops are same as we have in c++
// pure functions just like view don't result in gas cost

contract Test {
    address owner;
    uint[] public arr = [uint(1), 2, 3, 4, 5, 6, 7, 8 ,9];

    constructor() {  // There is no need of visiblity as no parameters are passed to it anyway
        owner = msg.sender;
    }

    function isArrayEven() public view returns(bool[] memory) {
        bool[] memory ret = new bool[](arr.length);

        for (uint i = 0; i < arr.length; i++) {
            ret[i] = (arr[i]%2 == 0);
        }

        return ret;
    }

    // function isArrayEven() public view returns(bool[] memory) { // This won't work
    //     bool[] memory ret;                                      // See this: https://stackoverflow.com/questions/60616895/solidity-returns-filtered-array-of-structs-without-push

    //     for (uint i = 0; i < arr.length; i++) {
    //         ret.push((arr[i]%2 == 0));
    //     }

    //     return ret;
    // }

    function isEven(uint _num) public pure returns(bool) { // pure means that it won't even read state of our contract
        if (_num % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function isOwner() public view returns(bool) {
        return (msg.sender == owner);
    }
}