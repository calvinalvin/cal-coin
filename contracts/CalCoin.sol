pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";

contract CalCoin is ERC20 {
  string public name = "Cal Coin";
  string public symbol = "CAL";
  uint256 public decimals = 18;
  
  // 1 billion coins initial·supply
  uint256 public INITIAL_SUPPLY = 1000000000 * (10 ** decimals);
  
  constructor() public {
    _totalSupply = INITIAL_SUPPLY;
    _balances[msg.sender] = INITIAL_SUPPLY;

  }
}
