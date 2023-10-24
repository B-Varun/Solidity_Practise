// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DifferentVariables{
    int constant FIX_VAL = 10;
    int immutable IMUT_VAL;

    constructor(){
        IMUT_VAL = 100;
    }

    function get_FIX_VAL() public view returns(int){
        return FIX_VAL;
    }
    function get_IMUT_VAL() public returns(int){
        return IMUT_VAL;
    }
}