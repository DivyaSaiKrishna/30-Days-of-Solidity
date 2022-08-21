// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//Interface
contract userInterface {
    function getUser(uint _address) public view returns (uint);
}

contract userInterfaceImpl{
    uint myaddress = 123;

    userInterface _user = userInterface(myaddress);
    function getSum() public{
        uint num = _user.getUser(myaddress);
    }

}