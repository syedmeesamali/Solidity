pragma solidity 0.5.1;

//This is the main contract where whole working and functioning will exist
contract CarContract
{
    struct CAR 
    {
        string name;
        uint year;
    }

    CAR[] cars; //List or array to hold various car objects
    function addCar(string memory _name, uint _year) public returns (uint)
    {
        return cars.push(CAR(_name, _year)) - 1;   //Add a car to car list (array)
    }

    function getCar(uint _id) public view returns (string memory)
    {
        return cars[_id].name;
    }

}