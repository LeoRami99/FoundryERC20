// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/LeoToken.sol";  // Ajusta la ruta según la ubicación de tu contrato.

contract LeoTokenTest is Test {
    LeoToken token;
    address deployer;

    function setUp() public {
        deployer = address(this);
        token = new LeoToken(1000 * 10 ** 18);
    }

    function testInitialBalance() public {

        assertEq(token.balanceOf(deployer), 1000 * 10 ** 18);
    }

    function testTokenDetails() public {

        assertEq(token.name(), "LeoCoin");
        assertEq(token.symbol(), "LCN");
    }
}
