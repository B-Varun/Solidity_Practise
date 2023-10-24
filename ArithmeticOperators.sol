// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ArithmeticOperators{
    int public x = 8;
    int public y = 0;

    function add() public view returns(int){
        return x+y;
    }
    function subtract() public view returns(int){
        return x-y;
    }
    function divide() public view returns(int){
        require(y>0);
        return x/y;
    }
}