pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract SMARTBONDS is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function SMARTBONDS(address _owner)  UpgradeableToken(_owner) {
    name = "SMARTBONDS";
    symbol = "SBOND";
    totalSupply = 2100000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}