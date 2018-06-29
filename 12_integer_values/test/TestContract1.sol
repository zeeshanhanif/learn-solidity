pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    function testIntegerValues() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoIntAndUint();
        int b = meta.demoIntAndUint2();

        Assert.equal(a,76,"A should be 76");
        Assert.equal(b,76,"A should be 76");
    }

    function testIntegerValues2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoIntAndUint3();
        Assert.equal(a,76,"A should be 76");
        
    }

    function testIntegerValues3() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoIntAndUint4();
        Assert.equal(a,180,"A should be 180");
        
    }

}