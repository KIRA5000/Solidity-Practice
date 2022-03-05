pragma solidity ^0.8.12;

contract Test {
    uint public stateVar = 1; // This is a state variable. 
                              // It belongs to a whole contract, and is stored permanently is block-chain

    function getLocalVar(uint _var) public view returns(uint) {
        uint localVar = _var; // This is a local variable. It belongs to the mehod only. It is only stored in block-chain until method is under execution
        localVar++;

        return localVar; 
    }

    function getGasLimit() public view returns(uint) {
        return block.gaslimit;  //This is a global variable. These variables are presnt there to tell us the properties of blockchain and transaction
    }
}