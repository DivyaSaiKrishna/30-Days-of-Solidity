// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract userFactory {

   mapping (address => uint) userMap;

    function setMyNumber(uint _myNumber) public {
        // Update our `userMap` mapping to store `_myNumber` under `msg.sender`
        userMap[msg.sender] = _myNumber;
        // ^ The syntax for storing data in a mapping is just like with arrays
    }

    function whatIsMyNumber() public view returns (uint) {
        // Retrieve the value stored in the sender's address
        // Will be `0` if the sender hasn't called `setMyNumber` yet
        return userMap[msg.sender];
    }

}