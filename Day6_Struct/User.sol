// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract User {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct user {
        string name;
        uint dna;
    }

}