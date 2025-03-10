// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std";
import {AjoParty} from "../src/Ajo.sol";

contract DeployAjoParty is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        AjoParty ajoParty = new AjoParty();
        console.log("AjoParty deployed to:", address(ajoParty));

        vm.stopBroadcast();
    }
}