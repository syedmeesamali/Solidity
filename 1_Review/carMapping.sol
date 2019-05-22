pragma solidity 0.5.1;

//This is the main contract where whole working and functioning will exist
contract CarContract
{
    struct Car 
    {
        string name;
        uint year;
    }
    
    mapping(address => Car) carOwner;
    function addCar(string memory _name, uint _year) public
    {
        if (carOwner[msg.sender].year != 0)
        {
        Car memory currentCar = Car(_name, _year);
        carOwner[msg.sender] = currentCar;    
        }
    }

    function getCar() public view returns (string memory) 
    {
        address owner = msg.sender;
        return carOwner[owner].name;
    }

}