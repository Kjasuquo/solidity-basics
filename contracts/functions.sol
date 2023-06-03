// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyFunctions{
    uint256 myUint = 42;
    string myString = "Joseph";
    bool myBool = true;
    uint256[] myArr = [3,3,3];

    function myPureFunc(uint256 _x, uint256 _y) public pure returns (uint256){
        return _x + _y;
    }

    function myViewFunc() private  view returns(string memory){
        return myString;
    }

    function myUpdateFunc() public returns(string memory){
        myString = "KayJay";
        myViewFunc();
        return myString;
    }

     function myReturnFunc() external view returns(string memory, uint256, uint256[] memory, bool){
        return (myString, myUint, myArr, myBool);
    }
}