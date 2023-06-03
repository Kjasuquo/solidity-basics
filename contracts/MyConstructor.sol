// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyConstructor{
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
}

contract MySeconContract is MyConstructor{
    constructor(string memory _name)  MyConstructor(_name){}
}