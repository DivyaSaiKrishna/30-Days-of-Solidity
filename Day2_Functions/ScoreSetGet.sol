// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract Score {
 
    uint score = 5;
    
    function getMessage() view public  returns(uint) {
        return score;
    }
    
    function setMessage(uint newMessage) public {
        score = newMessage;
    }
}
