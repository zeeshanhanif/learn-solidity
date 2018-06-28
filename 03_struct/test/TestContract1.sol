pragma solidity ^0.4.19;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    function testStruct1() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        
        Assert.equal(meta.getNameFromStruct(),"Test","meta.getNameFromStruct() should return 'Test'");
        
        // Can not access Struct, if access need to store in variable
        // but varaible to MyStruct type is not allowed here
        // May be it worked with library, not sure
        //MyStruct a = meta.myStruct();
        
        // This is also not allowed
        //Conract1.MyStruct a = meta.myStruct();
        
        // myStruct varaible is public in Contract
        // Can not access name property like this
        //Assert.equal(meta.myStruct().name,"Test","Testing Struct values");

        // Can not access name property like this too
        //Assert.equal(meta.myStruct().name(),"Test","Testing Struct values");
        
    }

    function testStruct2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        
        Assert.equal(meta.demoStruct3(),"Test3","meta.demoStruct3() should return 'Test3'");
        
    }

}