//SPDX-License-Indentifier:MIT
pragma solidity ^0.8.18;

contract simplestorage {
 uint256 setFavoriteNmber ;

 struct Person {
    string name ;
    uint256 number;
 }  

 Person[] public person ;

 mapping (string => uint256) nameToFavoriteNumber ;

 function setFavoriteNumber(uint256 _favoriteNumber) public {
    setFavoriteNumber = _favoriteNumber ; 
 }

 function getFavoriteNumber() public view returns (uint256) {
    return setFavoriteNumber ;
 }

 function addPerson (string memory _name , uint256 _number) public {
    person.append(Person(_name , _number));
    nameToFavoriteNumber[_name] = _number ;
 }
}