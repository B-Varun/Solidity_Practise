// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface Calculator{
    function calculate() external view returns(int);
}

contract MyCalculator is Calculator{
    function calculate() external pure returns(int){
        int a = 10;
        int b = 20;
        return a+b;
    }
}