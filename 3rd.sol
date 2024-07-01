// SPDX-License-Identifier:MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DGToken is ERC20, Ownable {
    constructor() ERC20("DG. Token", "DGT") Ownable(msg.sender) {
        // Mint initial supply to the contract deployer
        _mint(msg.sender, 1000000 * 10 ** decimals()); 
    }

    function mint(address to, uint256 balance ) public onlyOwner {
        _mint(to, balance);
    }

    function burn(uint256 balance) public {
        _burn(msg.sender, balance);
    }
}

