// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

/*
Functionality
Contract successfully uses require()
Contract successfully uses assert()
Contract successfully uses revert() statements
*/

contract MyToken {

    constructor(){
        owner = msg.sender;
    }

    // public variables here
    string public name = "simple";
    string public symbol = "SMPL";
    uint public totalSupply = 0;
    address public owner;

    //emits Events
    event Mint(address indexed to, uint amount);
    event Burn(address indexed from, uint amount); 
    event Transfer(address indexed from, address indexed to, uint amount);

    //errors
    error NoEnoughBalance(uint balance, uint withdrawamount);

    // mapping variable here
    mapping(address => uint) public balances;

    //modifiers
    modifier Owner{
        assert (msg.sender == owner);
        _;
    }

    // mint function
    function mint(address _address, uint _value) public Owner{
        totalSupply += _value;
        balances[_address] += _value;
        emit Mint(_address, _value);
    }

    // burn function
    function burn (address _address, uint _value) public Owner{
        if(balances[_address] >= _value){
            revert NoEnoughBalance({balance: balances[_address], withdrawamount: _value});
        }
        else{
            totalSupply -= _value;
            balances[_address] -= _value;
            emit Burn(_address, _value);
        }

    }

    //transfer
    function transfer (address _receiver, uint _value) public{
        require(balances[msg.sender]>= _value, "Account balance must be greater than transferred value");
        balances[msg.sender] -= _value;
        balances[_receiver] += _value;
        emit Transfer(msg.sender, _receiver, _value);

    }

}
