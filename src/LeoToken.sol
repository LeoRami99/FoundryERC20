// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LeoToken is ERC20{
    constructor(uint256 _initialSupply) ERC20("LeoCoin", "LCN") {
        _mint(msg.sender, _initialSupply);
    }
}
