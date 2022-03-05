pragma solidity >=0.8.12 <0.9.0;

// private functions are only accessible from inside the blockchain
// internal functions are just like private but they can also be called from contracts which inherit this contract
// external functions can only be called from outside of contract (this visiblity is not available for variables)
// public functions can be called from anywhere

contract Test {
    uint num;

    function _getPrivateNum() private view returns(uint) { 
        return num;
    }

    function _getInternalNum() internal view returns(uint) { 
        return num;
    }

    function getExternalNum() external view returns(uint) {
        return num;
    }

    function getPublicNum() public view returns(uint) {
        // getExternalNum(); This line will throw an error
        return num;
    }

}