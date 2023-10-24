// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BitwiseOperators{
    int public x = 10;
    int public y = 2;

    function Bitwise_And() public view returns(int){
        return x&y;
    } 

    function Bitwise_Or() public view returns(int){
        return x|y;
    }
}