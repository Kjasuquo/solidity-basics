// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyModifiers{
    uint256 public myNum = 0;
    bool public pause = false;

    modifier isNotPaused(){
        require(pause == false, "contract is pause");
        _;
    }

    function setPause() public {
        pause = true;
    }

    function addToNum() public isNotPaused {
        myNum++;
    }

    function subNum() public isNotPaused {
        myNum--;
    }
}