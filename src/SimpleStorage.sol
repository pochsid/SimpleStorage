// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

contract SimpleStorage {
    uint256 internal favoriteNumber;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    uint256[] listOfFavoriteNumbers;
    Person[] public listOfPeople;
    mapping(string => uint256) nameToFavoriteNumber;

    // Person public sid = Person({favoriteNumber:7, name: "Sid"})

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retreive() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
