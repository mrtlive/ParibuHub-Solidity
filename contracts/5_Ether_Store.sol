// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
    }

    receive() payable external {
        balance += msg.value;
    }

    function withdraw(uint amount, address payable destination) public {
        //function for pre-req if not this function will not work
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Not enough funds");
        destination.transfer(amount); // sending
        balance -= amount; // extraction amount from balance
    }



}