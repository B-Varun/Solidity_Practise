// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Animal{
    function makeNoise() public pure virtual returns(string memory){
        return "Generic sounds. Is not specific to a single animal";
    }

    function left() public pure returns(string memory){
        return "Turn Left";
    }

    function right() public pure returns(string memory){
        return "Turn Right";
    }
    function up() public pure returns (string memory){
        return "Go Straight";
    }
    function down() public pure returns(string memory){
        return "Moving Down";
    }
}

contract Lion is Animal{
    function makeNoise()public pure override returns(string memory){
        return "Roar";
    }

}

contract Elephant is Animal{
    function makeNoise() public pure override returns(string memory){
        return "Trumpet";
    }
}

contract Bird is Animal{
    function makeNoise() public pure override returns(string memory){
        return "Chirp";
    }
}

