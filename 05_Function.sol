// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0; //setting up the solidity compiler

// call - reading transactions
// trans - writing transactions
// view - reading from state, view and pure functions
// pure - call only pure functions, not for reading and modifying state
// constructor - called at the time of deployment
// recieve - directly send ether from account to smart contract

// Visibility types
// public private internal external
contract functions {
    int256 bal;

    // to initialize balance as 0
    constructor() public {
        bal = 0;
    }

    // function that returns balance
    function getBalance() public view returns (int256) {
        return bal;
    }

    // function to withdraw money by user input
    function withdraw(int256 amt) public {
        bal = bal - amt;
    }

    // function to deposit money by user input
    function deposit(int256 amt) public {
        bal = bal + amt;
    }
}
