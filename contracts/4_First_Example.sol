// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
    uint public count;

    //get current value
    function get() public view returns (uint) {
        return count;
    }

    // increment function for value add +1
    function inc() public {
        count += 1;
    }

    // decrement function for value add -1
    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }
}