# Code Title : ERC20 Token with Mint and Burn Capabilities.

# Description : 

The {DGToken}, sometimes known as "DG.Token" and denoted by the symbol "DGT," is an ERC20 token for the Degen Gaming project. 
Token implementation: The OpenZeppelin library and Solidity are used to enable the token owner to issue new tokens and send them to designated addresses. A token's supply can be decreased by any holder burning their own tokens. Initially, upon formation, the contract mints one million tokens and sends them to the deployer's address. To limit minting powers to the contract owner while permitting public burning and token transfers, it makes use of the OpenZeppelin {Ownable} contract.

## Key Feautures : 

1. ERC20 Compliance :
   
    * Inherits from OpenZeppelin's `ERC20` contract, ensuring standard ERC20 token functionalities like transfer, balance checking, and allowance.

2. Ownership Control :

   * Uses OpenZeppelin's `Ownable` contract to manage ownership. Only the contract owner has exclusive permissions for certain actions, such as minting tokens.

3. Initial Token Supply:
   
     * Mints an initial supply of 1,000,000 tokens to the deployer's address at contract deployment. This supply is set with respect to the token's decimal places.

4. Minting Functionality :
   
    * The `mint` function allows the contract owner to create new tokens and assign them to any address.
      This function can be used to increase the total supply as needed.

5. Transfer Function :

    * transfer: Allows token holders to transfer their tokens to another address. This function overrides the transfer function from the ERC20 standard to 
      explicitly include it in the contract. 

6. Burning Functionality :
   
     * The `burn` function enables any token holder to destroy their own tokens, effectively reducing the total supply.
       This function helps in deflationary mechanisms or managing excess tokens.

7. Token Details:
   
    * The token is named "DG.Token" with the symbol "DGT," providing branding and identification.

In order to facilitate regulated token production and user-driven supply reduction, the {DGToken} contract provides basic ERC20 functionality in addition to unique features for owner minting and public burning.

# Step-by-Step Instructions for Remix IDE :

   
  i. Open Remix IDE in your web browser.
      
  ii. In the Remix file explorer, click on the + icon or right-click in the workspace and select New File. Name your file (e.g., DGToken.sol).

  iii. Copy your DGToken smart contract code and paste it into the new file. ( https://github.com/Shaguftaseraj/avaxFunction/blob/main/3rd.sol )

  iv. Click on the Solidity Compiler tab .
  
  v. Ensure the compiler version is set to 0.8.26 or the version specified in your code.
  
  vi. Click on the Compile avaxfunc.sol button.
  
  vii. Resolve any warnings or errors that appear in the compilation panel.
  
  viii. Switch to the Deploy & Run Transactions tab.
  
   ix. Choose Injected Provider - MetaMask or Remix VM (Cancum) if you are deploying to a test network or for local testing.
   
   x. Injected Provider - MetaMask: Connects to your MetaMask wallet for deployment to a live or test network.
   
   xi. Ensure the correct contract (DGToken) is selected in the dropdown menu.
   
  xii. Click the Deploy button and confirm the transaction in MetaMask.
  
 xiii. After deployment, your contract will appear in the Deployed Contracts section of the Deploy & Run Transactions tab.
 
  xiv. You can interact with the contract by calling the available functions:
  
    mint(address to, uint256 balance): Mint new tokens.
    
    burn(uint256 balance): Burn tokens from your balance.

    transfer: Allows token holders to transfer their tokens to another address.
    
  xv. Click the respective buttons for each function, fill in the required parameters, and execute the transactions.
  
  xvi. If deploying on a testnet or mainnet, verify the deployment on a block explorer.
  
  xvii. Look up the contract address to see details like token supply and transaction history.

# Authors :

=> Shagufta Seraj

Github : https://github.com/Shaguftaseraj

# LICENSE :
This Project is licensed under the MIT License - see the link ( https://github.com/Shaguftaseraj/avaxFunction/blob/main/LICENSE ) for details.
