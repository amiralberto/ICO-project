
pragma solidity ^0.8.9;

import "./Cappedcrowdsale.sol";

contract AlbertCrowdSale is Cappedcrowdsale {
    uint256 internal constant ethCap = 10000 ether;
    uint256 internal constant oneEthToTokens = 100000;
    
    constructor(address _wallet, ERC20 _token) public 
        Crowdsale(oneEthToTokens, _wallet, _token)
        Cappedcrowdsale(ethCap)
    {
        
    }
    
}