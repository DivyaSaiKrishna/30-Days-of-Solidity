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

contract grandChildContract is childContract{
    function getGrandSum() external view returns (uint){
        return sum+10;
    }
}

contract caller{
    grandChildContract gc = new grandChildContract();

    function testMenthod() public returns (uint){
        gc.setSum();
        return gc.getGrandSum();
    }
}