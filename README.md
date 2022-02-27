# 30-Days-of-Solidity
30 days of Solidity programming challenge is a step-by-step guide to learn Solidity programming language in 30 days.

Practice Solidity with Remix Compiler and CheatSheet 

<h2> Solidity Cheatsheet </h2>

<h3> Table of Contents </h3> 

- ## Day1
  - [Version](#Version)  
  - [Variables](#Variables)
  - [Data Types](#DataTypes)
    
- ## Day 2
  - [Contracts](#Contracts)  
  - [Functions](#Functions)  
  - [Function Calls/Returns](#FunctionCalls/Returns)  
  - [Function Visibility](#FunctionVisibility)  
    


## Version
<a name="Version"/>
pragma solidity >=0.7.0 <0.9.0; will compile version >=0.7.0 <0.9.0.

## Variables
<a name="Variables"/>
There are 3 types of variables in Solidity

- local
declared inside a function
not stored on the blockchain

- state
declared outside a function
stored on the blockchain

- global (provides information about the blockchain)

## Data Types
<a name="DataTypes"/>

- #### Boolean (True / False)
   - Declaration : bool isBool;

- #### Byte32 : Bytes are used to store a fixed-sized character set 
   - Declaration : bytes32 name;

- #### uint (used to store signed and unsigned integers respectively)
   - Declaration : uint address;

- #### Address : Holds a 20 byte value (size of an Ethereum address)
  - Declaration : address myAddress = 0x123;

- #### String : string is used to store the character set equal to or more than a byte.
  - Declaration : string myString = 'Solidity';
 
- #### Enum :  user-defined data types.
  - Declaration :  enum my_enum { sol , idi , ty }  

- #### Struct Type : Structs are custom defined types that can group several variables
  - Declaration :
   ``` 
   pragma solidity ^0.4.0;
   contract Ballot {
    struct Voter { // Struct
        uint weight;
        bool voted;
        address delegate;
        uint vote;
     }
   }
   ```
 
## Contracts
<a name="Contracts"/> 

  - Contracts in Solidity are similar to classes in object-oriented languages.
    - Example :  
      ```
      pragma solidity ^0.4.0;
      contract HelloWorld {
      } 
       ```
 
## Functions
<a name="Functions"/>
    
  - Functions can be defined inside and outside of contracts.
    - Example :
      ```
      pragma solidity ^0.4.0;
      contract Calculation{
          function add(uint A, uint B) public{
            uint sum = A+B;
          }
       }
        ```
        
## Function Calls/Returns
<a name="FunctionCalls/Returns"/>

 - Functions outside of a contract, also called “free functions”.
   - Example :
      ```
        pragma solidity ^0.4.0;
        //return uint of subtraction
        function sub(uint A, uint B) public returns(uint){
          return B>A ? (B-A) : (A-B);
        }
        contract Calculation{
          function add(uint A, uint B) public{
            uint sum = A+B;
            uint dif = sub(10,3);
          }
        }
      ```
## Function Visibility
<a name="FunctionVisibility"/>

- Solidity knows two kinds of function calls: external ones that do create an actual EVM(Ethereum Virtual Machine) message call and internal ones that do not.            Furthermore, internal functions can be made inaccessible to derived contracts. This gives rise to four types of visibility for functions.
  - external : External functions are part of the contract interface, which means they can be called from other contracts and via transactions.
  - public : Public functions are part of the contract interface and can be either called internally or via message calls.
  - internal : Internal functions can only be accessed from within the current contract or contracts deriving from it.
  - private : Private functions are like internal ones but they are not visible in derived contracts.
