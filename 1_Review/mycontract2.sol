pragma solidity ^0.5.1;

//Review of solidity contracts
contract MyContract_New
{
    Person[] public people;
    
    uint256 public peopleCount;
    
    struct Person
    {
        string _firstName;
        string _lastName;
    }
    
    //Constructor method
    function addPerson(string memory _firstName, string memory _lastName) public
    {
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }
}
