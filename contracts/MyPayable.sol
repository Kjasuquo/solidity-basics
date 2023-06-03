// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyPayable{
    address payable public myAddress;

    constructor() payable{
        myAddress = payable(msg.sender);
    }

    function deposit() public payable {}

    function getThisContractBalance() public view returns (uint256){
        uint256 amount = address(this).balance;
        return amount;
    }

    function transferEther(address payable _user) public payable {
        _user.transfer(msg.value);
    }

    function sendEther(address payable _user) public payable {
       bool didSend = _user.send(msg.value);
       require(didSend, "this failed to send");
    }

    function callEther(address payable _user) public payable {
       (bool didSend, )= _user.call{value: msg.value}("");
       require(didSend);
    }

    receive() external payable {}
    fallback() external payable {}
}