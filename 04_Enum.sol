// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0; //setting up the solidity compiler


contract variables {
    // specified actions gets assigned as a number from 0
    // user defined types and can hold limited no of items
    enum Actionchoices {
        up,
        down,
        left,
        right
    }
    Actionchoices public choice;

    function goUp() public {
        choice = Actionchoices.up;
    }

    function goDown() public {
        choice = Actionchoices.down;
    }

    function goLeft() public {
        choice = Actionchoices.left;
    }

    function goRight() public {
        choice = Actionchoices.right;
    }
}
