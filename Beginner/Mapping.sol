pragma solidity ^0.8.12;

// mapping is just like Maps in C++
// It's a key-value pair

contract Test {

    struct Book {
        string name;
        string author;
    }

    mapping (uint => Book) public books;
    mapping (string => mapping (uint => Book)) myBooks; // Nested map

    function addBook(uint _id, string memory _name, string memory _author, string memory _owner) public {
        // Book memory b = Book(_name, _author);
        // books[_id] = b;

        books[_id] = Book(_name, _author);
        myBooks[_owner][_id] = Book(_name, _author);
    }
}