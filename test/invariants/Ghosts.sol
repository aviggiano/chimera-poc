// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Setup} from "./Setup.sol";

abstract contract Ghosts is Setup {
    struct Vars {
        uint256 value;
    }

    Vars internal _before;
    Vars internal _after;

    function __before() internal {
        _before.value == counter.number();
    }

    function __after() internal {
        _after.value == counter.number();
    }
}
