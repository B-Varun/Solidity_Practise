// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MaxInArray{
    uint[] public array = [0, 9, 2, 1, 100, 4, 3, 5, 7, 8, 6];

    function arrayLength() public view returns(uint){
        return array.length;
    }
    function deleteElement() public{
        array.pop();
    }
    function insertElement(uint a) public{
        array.push(a);
    }
    function maxElement() public view returns(uint){
        uint maxElement = array[0];
        for(uint i=1; i<arrayLength(); i++){
            if(maxElement < array[i])
                maxElement = array[i];
        }
        return maxElement;
    }

}