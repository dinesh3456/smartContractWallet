pragma solidity >=0.8.0 <0.9.0;
contract Owned{
    address owner;
    constructor (){
        owner=msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender==owner,"You are not the owner");
        _;
    }
}