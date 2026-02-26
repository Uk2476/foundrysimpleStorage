//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import "src/simpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (simpleStorage) {
        vm.startBroadcast();
        simpleStorage Simplestorage = new simpleStorage();
        vm.stopBroadcast();
        return Simplestorage ;
    }
}
