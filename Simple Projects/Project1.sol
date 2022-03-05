pragma solidity ^0.8.12;

contract HotelRoom {
    enum Status{Vacant, Occupied}

    address payable owner;
    Status currentStatus;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Status.Vacant;
    }

    function getValue() public payable returns(uint){
        return msg.value;
    }

    function bookRoom() public payable {
        require(currentStatus == Status.Vacant, "Room is already occupied");

        currentStatus = Status.Occupied;
        owner.transfer(msg.value);
    }

    function viewStatus() public view returns(string memory) {
        return ((currentStatus == Status.Vacant) ? "vacant" : "occupied");
    }
}