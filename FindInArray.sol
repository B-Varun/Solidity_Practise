// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FindInArray{
    uint[] public array = [1, 2, 3, 4, 5, 0, 9, 8, 7, 6];

    function isElementPresent(uint a)public view returns(bool){
        for(uint i=0; i< array.length; i++){
            if(array[i] == a)
                return true;
        }
        return false;
    } 
}