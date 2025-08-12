// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {SimpleStorage} from "./SimpleStorage.sol";

contract addFiveStorage is SimpleStorage {
    function store(uint256 _newNumber) public override {
        favoriteNumber = _newNumber + 5;
    }
}
