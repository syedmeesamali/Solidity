pragma solidity ^0.5.1;

//Review of solidity contracts
contract MyContract
{
    enum State { Waiting, Raedy, Active }
    State public state;
    
    constructor() public 
    {
        state = State.Waiting;
    }
    
    function activate() public  
    {
        state = State.Active;
    }
    
    function isActive() public view returns(bool)
    {
        return state == State.Active;
    }
 
}
