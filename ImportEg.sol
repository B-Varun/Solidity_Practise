// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {MyCalculator} from "./Calculator.sol";

contract ImportEg{

function sum() public returns(int){
    MyCalculator calculator = new MyCalculator();
    return calculator.calculate();
}

}