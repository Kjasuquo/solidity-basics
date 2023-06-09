// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyInheritance_A{
    string internal name = "Joseph";
}

contract MyInheritance_B is MyInheritance_A{
    function getName() public view virtual  returns (string memory){
        return name;
    }
}

contract MyInheritance_C is MyInheritance_B{
     function getName() public view virtual override  returns (string memory){
        return "name";
    }
}