pragma solidity ^0.5.1;

//Review of solidity contracts
contract MyContract {
    
    mapping(address => uint256) public balances;
    address payable wallet;
    
    //As per latest solidity update wallets should have keyword PAYABLE
    constructor (address payable _wallet) public {
        wallet = _wallet;
    }
    
    function buyToken() public payable{
        //buy a token 
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
    }
    
}