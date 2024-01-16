// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {TargetFunctions} from "./TargetFunctions.sol";
import {FoundryAsserts} from "@chimera/FoundryAsserts.sol";
import {Test} from "forge-std/Test.sol";

contract Handler is TargetFunctions, FoundryAsserts {
    constructor() {
        setup();
    }
}

contract FoundryTester is Test {
    Handler public handler;

    function setUp() public {
        handler = new Handler();
        targetContract(address(handler));
    }

    function invariant() public {
        assertTrue(handler.invariant_COUNTER_01());
    }
}
