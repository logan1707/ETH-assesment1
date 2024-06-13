// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public Coin_Name;
    string public Coin_Abv;
    uint public TotalBalance;


    // mapping variable here
    mapping(address=>uint) public Balances;


    // mint function
    function MintCoin(address ad,uint amount) public {
      Balances[ad]+=amount;
      TotalBalance+=amount;
    }

    // burn function
    function BurnCoin(address ad,uint amount)  public{
      if (Balances[ad] >= amount){
        Balances[ad]-=amount;
        TotalBalance-=amount;
      }
    }
}
