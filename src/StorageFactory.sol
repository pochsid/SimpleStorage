// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {SimpleStorage} from "./SimpleStorage.sol";

contract storageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
        //address
        //abi - technically a lie u need a function selector - application binary interface

        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[
            _simpleStorageIndex
        ];
        mySimpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[
            _simpleStorageIndex
        ];
        return mySimpleStorage.retreive();
    }
}
