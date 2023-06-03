// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyErrorsAndChecks {
    function MyPureFunc(uint256 _x, uint256 _y) public pure returns (uint256 xy){
        require(_x>_y, "X is not bigger than y");
        return _x+_y;
    }

    function MyRevertPureFunc(uint256 _x, uint256 _y) public pure returns (uint256 xy){
        if(_x == 10){
            revert("x is 10");
        }
        return _x+_y;
    }
}