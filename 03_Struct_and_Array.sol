// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0; //setting up the solidity compiler

pragma solidity ^0.5.0;

contract variables {
    // struct is user defined data type same as structures in C
    struct person {
        string name;
        int256 age;
    }
    person public p1;

    function setPerson(string memory n, int256 a) public {
        p1.name = n;
        p1.age = a;
    }

    // defining array
    uint256[] public arr;

    //with the help of push and pop functions elements can be inserted and deleted from the array
    function addElement(uint256 val) public {
        arr.push(val);
    }

    function delElement() public {
        arr.pop();
    }
}
