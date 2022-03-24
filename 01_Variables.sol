// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0; //setting up the solidity compiler

contract variables {
    uint8 public myuInt = 0;

    // uint8 can store the unsigned integers in range 0 to 2^8 (256)
    // if you decrement after 0 it will go to 256 because of wraparound.

    // function to increment variable value
    function increment() public {
        myuInt++;
    }

    // function to decrement variable value
    function decrement() public {
        myuInt--;
    }

    // Boolean can hold value true or false
    bool public myBool = false;

    // function to change boolean variable value
    function changeVal() public {
        myBool = !myBool;
    }

    // string is not array of characters in solidity so cannot index it.
    // string manipulation is costly
    string public myStr = "sahil";
}
