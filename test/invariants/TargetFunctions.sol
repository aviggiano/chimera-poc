// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {BaseTargetFunctions} from "@chimera/BaseTargetFunctions.sol";
import {Setup} from "./Setup.sol";
import {Properties} from "./Properties.sol";
import {Params} from "@src/Counter.sol";

/**
    echidna . --contract CryticTester --config echidna.yaml
    medusa fuzz
    forge test
 */
abstract contract TargetFunctions is Setup, Properties, BaseTargetFunctions {
    function increment() public {
        counter.increment();
    }

    function update(Params memory params) public {
        counter.update(params);
    }
}
