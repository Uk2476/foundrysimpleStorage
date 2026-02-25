//SPDX-LICENSE-IDENTIFIER:MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import "src/simplestorage.sol";

contract deploySimplestorage is Script {
    function run() external {
        vm.startBroadcast();
        simplestorage Simplestorage = new simplestorage();
        vm.stopBroadcast();
    }
}
