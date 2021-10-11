pragma solidity ^0.8.9;


import "./ERC20Basic.sol";
import "./safemath.sol";

 // title Basic token //
 // Basic version of StandardToken, with no allowances//
contract BasicToken is ERC20Basic {
  using SafeMath for uint256;

  mapping(address => uint256) internal balances;

  uint256 internal totalSupply_;


  // Total number of tokens in existence //
 
  function totalSupply() public view returns (uint256) {
    return totalSupply_;
  }


  // Transfer token for a specified address //
  // _to The address to transfer //
  // _value The amount to be transferred //
  
  function transfer(address _to, uint256 _value) public returns (bool) {
    require(_value <= balances[msg.sender]);
    require(_to != address(0));

    balances[msg.sender] = balances[msg.sender].sub(_value);
    balances[_to] = balances[_to].add(_value);
    emit Transfer(msg.sender, _to, _value);
    return true;
  }

  // Gets the balance of the specified address.//
  // _owner The address to query the the balance of.//
  // @return An uint256 representing the amount owned by the passed address.//

  function balanceOf(address _owner) public view returns (uint256) {
    return balances[_owner];
  }

}