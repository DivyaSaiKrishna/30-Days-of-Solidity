// SPDX-License-Identifier: GPL-3.0
/* Test class for Calculation.sol */
pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "../contracts/Calculation.sol";

contract CalculationTest{
    Calculation calculationTest = new Calculation();
    function checkAddition() public{
            Assert.equal(calculationTest.CalAddition(23,32), 55, "its not equal");
    }
    function checkSubtraction() public{
        Assert.equal(calculationTest.CalSubtraction(20,10),10,"its not equal");
    }
    function checkMultiplication() public{
        Assert.equal(calculationTest.CalMultiplication(30,10),300,"its not equal");
    }
    function checkDivision() public{
        Assert.equal(calculationTest.CalDivison(320,10),32,"its not equal");
    }
}
