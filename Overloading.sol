// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Overloading{

function add(int a, int b) public pure returns(int){
    return a+b;
}

function add(string memory a, string memory b) public pure returns(string memory){
    return string.concat(a, b);
}
}