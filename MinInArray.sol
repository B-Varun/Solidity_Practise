// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract MinInArray{

uint[] public array = [10, 9, 8, 7, 1, 6, 5, 4, 3, 2];

function addElements(uint a) public{
    array.push(a);
}

function deleteElements() public{
    array.pop();
}

function getElementAt(uint pos) public view returns(uint){
    return array[pos];
}

function findMin_in_Array() public view returns(uint){
    uint minValue = array[0];
    
    for(uint i=1;i<legnthOfArray(); i++){
        if(minValue > array[i])
            minValue = array[i];
    }

    return minValue;
}

function legnthOfArray() public view returns(uint){
    return array.length;
}
}