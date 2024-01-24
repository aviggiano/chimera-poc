// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

struct Params {
    uint256 increment;
    uint256 multiply;
}

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function update(Params memory params) public {
        number += params.increment;
        number *= params.multiply;
    }
}
