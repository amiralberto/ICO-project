pragma solidity ^0.8.9;

import "./standardToken.sol";
import "./SafeMath.sol";

 contract AlbertToken is StandardToken {
    
    string public constant symbol = "ALBERT";
    string public constant name = "Blockgreen";
    uint256 public constant decimal = 18;
    
    uint256 internal constant tokenUnit = 10**18; 
    uint256 internal constant oneBillion = 10**9;
    uint256 internal constant maxTokens = 2 * oneBillion * tokenUnit;
    
    constructor() public {
        totalSupply_ = maxTokens;
        balances[msg.sender] = maxTokens;
    }
    
}