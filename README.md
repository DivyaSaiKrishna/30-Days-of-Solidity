# 30-Days-of-Solidity
Practice Solidity with Remix Compiler and CheatSheet 

<h2> Solidity Cheatsheet </h2>
<h2> Table of Contents </h2> 

[Version](#Version)  
<a name="Version"/>

[Variables](#Variables)
<a name="Variables"/>

[Data Types](#DataTypes)
<a name="DataTypes"/>


## Version
pragma solidity >=0.7.0 <0.9.0; will compile vesrion >=0.7.0 <0.9.0.

## Variables

There are 3 types of variables in Solidity

local
declared inside a function
not stored on the blockchain

state
declared outside a function
stored on the blockchain

global (provides information about the blockchain)

## Data Types
Boolean (True / False)

Declaration : bool isBool;

Byte32 : Bytes are used to store a fixed-sized character set 

Declaration : bytes32 name;

uint (used to store signed and unsigned integers respectively)

Declaration : uint address;
