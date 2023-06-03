// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Myloop {
    function myLoop() public pure{
        for(uint256 i= 0; i < 5; i++){
            if(i == 3){
                break;
            }
            if (i == 2){
                continue; 
            }
        }

        uint256 j = 0;
        while (j < 10){
            // do something
            j++;
        }
    }
}