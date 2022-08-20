// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract MyContract {
  function someExternalFunction() external view returns (uint8) {
    return 0;
  }
}

contract MyContractEX {
  uint256 public myVar;

  function myFunc() public view returns (uint256) {
    // Automatically skips the function and accesses myVar
    uint256 myVarCopy = myVar; 
  }
}

contract MyContractIN {
  uint256 internal myVar;

  function myFunc() public view returns (uint256) {
    uint256 myVarCopy = myVar; 
  }
}
contract MyContractPR {
  uint256 private myVar;

  function myFunc() public view returns (uint256) {
    // This works, it's the same contract
    uint256 myVarCopy = myVar;
  }
}
