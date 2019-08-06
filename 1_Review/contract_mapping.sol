pragma solidity ^0.5.1;

//Review of solidity contracts
contract PeopleMapping
{
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    struct Person
    {
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    //Constructor method
    function addPerson(string memory _firstName, string memory _lastName) public
    {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}
