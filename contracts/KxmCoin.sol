pragma solidity ^0.4.4;
import "./../node_modules/zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract KxmCoin is StandardToken {
  // string public name = "KxmCoin";
  // string public symbol = "KXC";  //token的代号 
  // uint256 public INITIAL_SUPPLY = 1000000000; //初始化代币总量，如这里1000万
  string public name;
  string public symbol;
  uint8 public decimals = 8;  //小数位
  uint256 public INITIAL_SUPPLY;
  address public tokenOwner;
  
  constructor(string _name, string _symbol,uint256 _initial_supply) public{
    name = _name;
    symbol = _symbol;
    INITIAL_SUPPLY = _initial_supply;
    totalSupply_ = INITIAL_SUPPLY * 10 ** uint256(decimals);
    balances[msg.sender] = totalSupply_;
    tokenOwner = msg.sender;
  }

  function transferAllow (address _from, address _to,uint256 _value) public returns (bool){
    require(_value <= balances[_from]);
    require(msg.sender == tokenOwner);

    balances[_from] = balances[_from].sub(_value);
    balances[_to] = balances[_to].add(_value);
    emit Transfer(_from, _to, _value);
    return true;
  }
}
