pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    //Rule 2
    int[3] list = [int(21),22,23];
    function testRule2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        
        int localVal = 45;
        int a = meta.changeMemoryValueType(localVal);
        int b = meta.changeMemoryRefType(list);

        Assert.equal(localVal,45,"localVal should be 45");
        Assert.equal(list[1],22,"List 1 should be 22");
        Assert.equal(a,5,"A should be 5");
        Assert.equal(b,4,"B should be 4");
    }

    //Rule 5
    function testRule5() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoStorageToStorageValueAssignment1();
        int b = meta.demoStorageToStorageRefAssignment2();
        Assert.equal(a,20,"a should be 20");
        Assert.equal(b,4,"a should be 4");
        
    }

    //Rule 6
    function testRule6() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoMemoryToStorageValueAssignment1();
        int b = meta.demoMemoryToStorageRefAssignment2();
        Assert.equal(a,20,"a should be 20");
        Assert.equal(b,4,"a should be 4");
        
    }

    //Rule 7
    function testRule7() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoStorageToMemoryValueAssignment1();
        int b = meta.demoStorageToMemoryRefAssignment2();
        Assert.equal(a,10,"a should be 10");
        Assert.equal(b,2,"a should be 2");
        
    }

    //Rule 8
    function testRule8() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        int a = meta.demoMemoryToMemoryValueAssignment1();
        int b = meta.demoMemoryToMemoryRefAssignment2();
        Assert.equal(a,30,"a should be 30");
        Assert.equal(b,10,"a should be 10");
        
    }

}