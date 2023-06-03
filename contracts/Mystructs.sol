// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyStruct{

    struct NFT{
        string name;
        uint256 dns;
    }

    NFT[] public MyNFT;

    function addNFT(string memory _name, uint256 _dna) public {
        // NFT memory NewNFT;
        // NewNFT.name = _name;
        // NewNFT.dns = _dna;

        NFT memory NewNFT = NFT(_name, _dna);
        MyNFT.push(NewNFT);
    }

    function updateNFT(uint256 _index, string memory _name) public {
        NFT storage nftToBeUpdated = MyNFT[_index];
        nftToBeUpdated.name = _name;
    }

    function getNFT(uint256 _index) public view returns(NFT memory){
        return MyNFT[_index];
    }

}