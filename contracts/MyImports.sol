// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "./loop.sol";

contract NFT{
    uint256 dna;
    string name;

    constructor(string memory _name, uint256 _dna){
        name = _name;
        dna = _dna;
    }
}


contract MyImport is ERC721, Myloop{

    NFT[] public nfts;
    string myName = "Joseph";
    bytes32 myByteName = "Joseph";

    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol){}

    function addNFT(string memory _name, uint256 _dna) public {
        NFT nft = new NFT(_name, _dna);
        nfts.push(nft);
    }

    function myHashFunc(string memory _name) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_name));
    }
}

//0x94cf789d27a0633f5b75fc02402a0dc9270e3d8b8bbf2d60cff41cec12300b96