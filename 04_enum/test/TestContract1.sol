pragma solidity ^0.4.19;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    function testUsingDeployedContract() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());    
        Assert.equal(meta.getLanguage(),2,"Testing Enum, value should be 2");
    }

    function testUsingDeployedContract2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());    
        Assert.equal(meta.getLanguage2(),3,"Testing Enum, value should be 3");
    }


    function testLanguageSetAndGet() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());    
        meta.setLanguage(1);
        
        // Not allowed
        //Languages lang = meta.getLanguageStateVariable();

        Assert.equal(int(meta.getLanguageStateVariable()),1,"Testing Enum, value should be 1");
    }

}