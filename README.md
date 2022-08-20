# 30-Days-of-Solidity
30 days of Solidity programming challenge is a step-by-step guide to learn Solidity programming language in 30 days.
<h4>-####-Inprogress-####-<h4>
Practice Solidity with Remix Compiler and CheatSheet 

I learning from these resouces

- Souces:
  - https://docs.soliditylang.org/
  - https://cryptozombies.io/

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

- ## Day 3
  - [Memory vs Storage](#MemoryvsStorage)
  - [Arrays](#Arrays)
  
- ## Day 4
  - [Keccak256](#Keccak256)
  - [Web3.js](#Web3.js)  
  
- ## Day 5
  - [Mapping](#Mapping) 
    
    


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

## Memory VS Storage
<a name="MemoryvsStorage"/>
  
  - In Solidity, there are two locations you can store variables — in storage and in memory.
  - Storage refers to variables stored permanently on the blockchain. Memory variables are temporary.

## Arrays
<a name="Arrays"/>

- Array with a fixed length of 2 elements:
  - uint[2] fixedArray;
- A dynamic Array - has no fixed size, can keep growing:
  - uint[] dynamicArray;

## Keccak256
<a name="Keccak256"/>
- Ethereum has the hash function keccak256 built in, which is a version of SHA3. A hash function basically maps an input into a random 256-bit hexadecimal number. A slight change in the input will cause a large change in the hash.
It's useful for many purposes in Ethereum, but for right now we're just going to use it for pseudo-random number generation.
Also important, keccak256 expects a single parameter of type bytes. This means that we have to "pack" any parameters before calling keccak256:


```
  keccak256(abi.encodePacked("aaaab"));
  o/p : 6e91ec6b618bb462a4a6ee5aa2cb0e9cf30f7a052bb467b0ba58b8748c00d2e5
```

## Web3.js
<a name="Web3.js"/>

## Mapping
<a name="Mapping"/>
- Maps are created with the syntax mapping(keyType => valueType).
  keyType can be value types such as uint, address or bytes.
  valueType can be any type including another mapping or an array.
  Mappings are not iterable.
  
  ```
  mapping(address => uint) public myMap;
  
  //Example
  mapping(uint => uint) public uintMap;
  function set() public{
    uintMap[0] = 123;
  }
  function get() view public returns(uint){
    uintMap[0];
  }
  o/p : 123
  ```
