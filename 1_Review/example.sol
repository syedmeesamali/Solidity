pragma solidity 0.5.1;

contract SimpleStorage {
    uint storedData;        //unsigned int to store a variable

    function set(uint x) public {
        storedData = x;     //Function set to set some value of variable
    }

    function get() public constant returns (uint) {
        return storedData;      //Function get to retrieve value of variable
    }
}