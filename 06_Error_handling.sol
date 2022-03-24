// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0; //setting up the solidity compiler

// Visibility types
// public private internal external

// Error Handling
// revert - reverts the transaction and returns the gas
// assert - consumes all gas, used for validate invariants, terminates transaction
// require - returns remaining gas, used for user validation

contract functions {
    uint256 private bal;
    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // used for validation that only owner can withdraw money

    // to initialize balance as 0
    constructor() public {
        bal = 0;
    }

    // function that returns balance
    function getBalance() public view returns (uint256) {
        return bal;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "Only owner can withdraw money !");
        _;
    }

    // function to withdraw money by user input
    function withdraw(address payable to, uint256 amt) public payable {
        // need to add validation
        require(owner == msg.sender, "Only owner can withdraw money !");
        bal = bal - amt;
        to.transfer(amt);
    }

    // function to withdraw money by user input
    function withdraw2(uint256 amt) public onlyOwner {
        // balance goes to wrap around if deducted more amount
        assert(bal >= amt); // compiler will throw an error
        bal = bal - amt;
    }

    // function to deposit money by user input
    function deposit() public payable {
        if (owner != msg.sender) {
            revert("Not owner!! You cannot deposit money");
        }
        bal = bal + msg.value;
    }
}
