pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    function testUpdateList() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        meta.updateList();
        Assert.equal(meta.list(0),31,"List 0 should be 31");
        Assert.equal(meta.list(1),45,"List 1 should be 45");
        Assert.equal(meta.list(2),33,"List 2 should be 33");
    }

    function testUpdateList2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        // updateList2 function pass state variable which is array to another function
        // but because function's parameter are always memory location so it
        // will create separate copy and changing the one will not effect the other
        meta.updateList2();
        Assert.equal(meta.list(0),31,"List 0 should be 31");
        Assert.equal(meta.list(1),45,"List 1 should be 45");
        Assert.equal(meta.list(2),33,"List 2 should be 33");
    }

    function testUpdateList3() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        // And assigning state ref variable to memory ref variable will create a separate copy 
        // changing one will not effect other
        int val = meta.updateList3();
        Assert.equal(val,33,"Val should be 33");
        
    }

    function testUpdateList4() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        // Assigning Ref state (storage) variable to ref storage local variable
        // will not create a separate copy so changing one will effect other
        int val = meta.updateList4();
        Assert.equal(val,100,"Val should be 100");
        
    }

    function testUpdateStruct() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        // Assigning Ref state (storage) variable to ref storage local variable
        // will not create a separate copy so changing one will effect other 
        int val = meta.updateStruct();
        Assert.equal(val,40,"Val should be 40");        
    }

    function testUpdateStruct2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        // And assigning state ref variable to memory ref variable will create a separate copy 
        // changing one will not effect other
        int val = meta.updateStruct2();
        Assert.equal(val,98,"Val should be 98");
        
    }
}