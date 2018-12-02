pragma solidity ^0.4.4;
import "./../node_modules/zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract KxmCoin is StandardToken {
  string public name = "KxmCoin";
  string public symbol = "KXC";  //token的代号 
  uint8 public decimals = 8;  //小数位
  uint256 public INITIAL_SUPPLY = 10000000; //初始化代币总量，如这里1000万
  
  function constructor() public{
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
