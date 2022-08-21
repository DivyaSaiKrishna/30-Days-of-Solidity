// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract parentContract{
    uint sum;
    function setSum() external{
        uint a = 10;
        uint b = 20;
        sum = a+b;
    }
}

contract childContract is parentContract{
    function getSum() external view returns (uint){
        return sum;
    }
}

contract caller{
    childContract cc = new childContract();

    function testMenthod() public returns (uint){
        cc.setSum();
        return cc.getSum();
    }
}