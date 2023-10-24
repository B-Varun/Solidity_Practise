// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract WellsFargo{
    function IFSC() internal pure returns(string memory){
        return "IFSC code is : IFSC001122WF";
    } 
    function openNewAccount() public pure returns(string memory){
        return "Created new Account";
    }
}

contract Bank_Of_America{
    function IFSC() pure internal returns (string memory){
        return "IFSC of BOA is : IFSCXCD34BOA";
    } 
        function openNewAccount() public pure returns(string memory){
        return "Created new Account";
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
    function openAccount() public pure returns(string memory){
        super.openNewAccount();
    }
}



contract NotCustomer{
    function printIFSC() public pure returns(string memory){
        return "No IFSC Code since not a customer of Bank";
    }
        function openAccount() public returns(string memory){
        WellsFargo bank = new WellsFargo();
        string memory str = bank.openNewAccount();
        return str;
    }
}