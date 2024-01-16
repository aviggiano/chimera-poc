// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {BaseSetup} from "@chimera/BaseSetup.sol";
import {Counter} from "@src/Counter.sol";

abstract contract Setup is BaseSetup {
    Counter internal counter;

    function setup() internal override {
        counter = new Counter();
    }
}
