// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0; //setting up the solidity compiler

contract variables {
    // for sending funds and account balance (holds 20 bytes)
    address public myAdd;

    constructor() public {
        myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }

    function getBalance() public view returns (uint256) {
        return myAdd.balance;
    }

    // mappings is used to store key value pairs / Associative arrays
    mapping(uint8 => string) public myMap;

    function initMap() public {
        myMap[0] = "Sahil";
    }

    function initMapUser(uint8 key, string memory value) public {
        myMap[key] = value;
    }
}
