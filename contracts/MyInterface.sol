// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

interface ICounter {
    function count() external view returns (uint256);
    function addCount() external;
}
contract MyInterface is ICounter{
    uint256 counter = 0;
    function count() external view returns (uint256){
        return counter;
    }
    function addCount() external{
        counter++;
    }
}