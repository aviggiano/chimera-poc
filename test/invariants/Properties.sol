// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Asserts} from "@chimera/Asserts.sol";
import {Ghosts} from "./Ghosts.sol";

abstract contract Properties is Ghosts, Asserts {
    string internal constant COUNTER_01 = "COUNTER_01: Counter always increases by 1";

    function invariant_COUNTER_01() public returns(bool) {
        return _after.value == _before.value + 1;
    }
}
