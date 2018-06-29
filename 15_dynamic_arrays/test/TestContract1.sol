pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    function testDynamicArray() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoDynamicArray();
        
        Assert.equal(a,5,"A should be 5");
        
    }

    function testDynamicArray2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoDynamicArray2();
        Assert.equal(a,0,"A should be 0");
    }

    function testDynamicArray3() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int[] memory a = meta.demoDynamicArray3();
        Assert.equal(a[1],31,"A should be 31");
    }

    function testDynamicArray4() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoDynamicArray4();
        Assert.equal(a,34,"A should be 34");
    }

    function testDynamicArray5() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoDynamicArray5();
        Assert.equal(a,34,"A should be 34");
    }

    function testDynamicArray6() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoDynamicArray6();
        Assert.equal(a,5,"A should be 45");
    }

}