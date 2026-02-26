//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract simpleStorage {
 uint256 FavoriteNumber ;

 struct Person {
    string name ;
    uint256 number;
 }  

 Person[] public person ;

 mapping (string => uint256) nameToFavoriteNumber ;

 function setFavoriteNumber(uint256 _favoriteNumber) public {
    FavoriteNumber = _favoriteNumber ; 
 }

 function getFavoriteNumber() public view returns (uint256) {
    return FavoriteNumber ;
 }

 function addPerson (string memory _name , uint256 _number) public {
    person.push(Person(_name , _number));
    nameToFavoriteNumber[_name] = _number ;
 }
}