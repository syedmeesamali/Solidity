pragma solidity ^0.5.1;

//Review of solidity contracts
contract MyContract {
    
    mapping(address => uint256) public balances;
    address wallet;
    
    function buyToken() {
        //buy a token 
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
    }
    
}