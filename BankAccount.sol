// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BankAccount{

}

contract WellsFargo{
    function IFSC() internal pure returns(string memory){
        return "IFSC code is : IFSC001122WF";
    } 
}

contract Bank_Of_America{
    function IFSC() pure internal returns (string memory){
        return "IFSC of BOA is : IFSCXCD34BOA";
    } 
}

contract PrivateBank{
    function IFSC() private pure returns(string memory){
        return "IFSC is : IFSC111111111111Private";
    }

    function privateInvoker() pure public returns (string memory){
        IFSC();
    }
}

contract customer3 is PrivateBank{
    function ifsc() public pure{
        privateInvoker();
    }
}

contract Customer1 is WellsFargo{
    function printIFSC() public pure returns(string memory){
        return super.IFSC();
    }
}

contract Customer2 is Bank_Of_America{
    function printIFSC() public pure returns(string memory){
        return super.IFSC();
    }
}



contract NotCustomer{
    function printIFSC() public pure returns(string memory){
        return "No IFSC Code since not a customer of Bank";
    }
}