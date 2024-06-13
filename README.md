# ETH-assesment
This Solidity program is a simple "ETH-coin" program that demonstrates the basic use of coins along with adding and deducting balance. The purpose of this program is to learn the basic concept of solidity variables,functions,mapping and conditional statements to start the journey in solidity.
# Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The Contract has multiple functions to operate and learn the concept of functions,mapping and conditional statements.
# Getting started
Executing Program

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ETH-assesment.sol). Copy and paste the following code into the file:

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

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile ETH-assesment.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the MintCoin,Burncoin functions. Click on the "MyToken" contract in the left-hand sidebar, and then click on the "MintCoin" function.Enter the "Address" and "Amount" Finally, click on the "transact" button to execute the function. simillarly you can execute "BurnCoin" function and also retrieve TotalBalance.

# Author
Kunal Kumar
@kunal1772002@gmail.com

