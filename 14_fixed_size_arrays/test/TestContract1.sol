pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    function testFixedSizeArray() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoFixedSizeStateArray();
        
        Assert.equal(a,5,"A should be 5");
        
    }

    function testFixedSizeArray2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        // here we need to specify memory keyword otherwise it will not work
        int[3] memory a = meta.demoFixedSizeArrayReturns();
        Assert.equal(a[1],32,"A should be 32");
    }

    function testFixedSizeArray3() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoFixedSizeStateArray2();
        Assert.equal(a,0,"A should be 0");
        
    }

    function testFixedSizeArray4() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoFixedSizeStateArray3();
        Assert.equal(a,45,"A should be 45");
        
    }

    function testFixedSizeArray5() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoFixedSizeMemoryArray4();
        Assert.equal(a,0,"A should be 0");
    }
}