// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyIfElse{
    uint256 public revealState = 0;
    bool public isNowRevealed = false;

    function addToRevealState() public {
        revealState ++;
    }

    function isRevealed() public {
        if(revealState >= 10){
            isNowRevealed = true;
        }
        else if(revealState < 10){

        }
        else {
            
        }
    }
}