pragma solidity ^0.5.1;

//Review of solidity contracts
contract MyContract
{
    string public value;       //available across the contract
    
    constructor() public 
    {
        value = "Some Value";
    }

    //Function to set some string value
    function set(string memory _value) public 
    {
        value = _value;
    }
}
