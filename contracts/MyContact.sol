// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/// @title My first smart contract
/// @author Joseph Asuquo
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.
contract MyContract {
    string public name = "Joseph";
    address payable myAddress = payable (0xd9145CCE52D386f254917e481eB44e9943F39138);
    uint256 private addy = myAddress.balance;
    bool internal IsTrue = false;

    /// @notice You can use this contract to change name of the name variable
    function updateName(string memory _newName) public {
        name = _newName;
    }
}

contract NewContract is MyContract{
    string public newName = name;
}