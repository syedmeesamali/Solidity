pragma solidity 0.5.1;

//This is the main contract where whole working and functioning will exist
contract CarContract
{
    string output;

    constructor(string memory _output) public
    {
        output = _output;
    }
    
    function horn() public view returns(string memory) 
    //view means its a GETTER function and doesn't require transaction/gas
    {
        return output;
    }

    function setOutput(string memory _output) public //Setter function (will use gas during execution)
    {
        output = _output;
    }

}