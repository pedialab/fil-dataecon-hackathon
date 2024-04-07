// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";



contract DataGovernanceToken is ERC20Votes {
  uint256 public s_maxSupply = 1000000000000000000000000;

  constructor(
    string memory name,
    string memory version
  )
    ERC20("DataGovernanceToken", "DGT") 
    EIP712("DataGovernanceToken", "1")
  {
    // super(name, version);
    super._mint(msg.sender, s_maxSupply);
  }
}
