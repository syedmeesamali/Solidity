pragma solidity ^0.5.1;

//Review of solidity contracts
contract MyContract
{
    string value;       //available across the contract
    
    constructor() public 
    {
        value = "Some Value";
    }

    //Function to get some string value
    function get() public view returns(string)
    {
        return value;
    }

    //Function to set some string value
    function set(string _value) public 
    {
        value = _value;
    }
}
