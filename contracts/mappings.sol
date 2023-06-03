// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract myMappings{
    mapping (uint256 => address) public nfts;
    uint256 counter = 0;

    function getOwnerOfNFT(uint256 _id) public view returns (address){
        return nfts[_id];
    }

    function mintNFT(address _address) public {
        nfts[counter]=_address;
        counter++;
    }
}