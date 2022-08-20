// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "../contracts/ScoreSetGet..sol";

contract ScoreTest{
    Score sc = new Score();
    function setScore() public{
            sc.setMessage(23);
            Assert.equal(sc.getMessage(),23,"yes its 23");
    }
}
