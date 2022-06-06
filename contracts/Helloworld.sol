// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Helloworld {

    string public message;
    address owner;

    constructor(string memory _message) {
        message = _message;
        owner = msg.sender;
    }

    function hello() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public payable {
        // require(msg.value > 1 ether, 'You must pay at least 1 ETH');
        require(msg.sender == owner, 'You are not the owner');
        message = _message;
    }
}
