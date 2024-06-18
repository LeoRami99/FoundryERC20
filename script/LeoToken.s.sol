// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {LeoToken} from "../src/LeoToken.sol";

contract DeployContract is Script {
    uint256 public initialSupply = 1000000000000000000000000;
    function run() external{
        vm.startBroadcast();
        new LeoToken(initialSupply);
        vm.stopBroadcast();
    }
}