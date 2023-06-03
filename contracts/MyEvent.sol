// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyEvent{
    event CreateNFT(address indexed  user,uint256 id, uint256 dna);

    function creatNFT(uint256 _id, uint256 _dna) public {
        // create nft n save to storage

        emit CreateNFT(msg.sender,_id, _dna);
    }
}