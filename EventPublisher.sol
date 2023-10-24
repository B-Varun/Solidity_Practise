// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Worker{
    event ProductPublished(string message);
}

contract LaptopAssembler is Worker{
    function produceProducts(int num) public{
        require(num>0);
        emit ProductPublished("Assembled a laptop");
    }
}

contract CarMaker is Worker{
    function createCar(int num) public{
        require(num > 0);
        emit ProductPublished("Created a car");
    }
}