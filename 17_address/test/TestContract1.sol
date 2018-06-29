pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    function testAddressDataType() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        uint a = meta.demoAddressDataType();
        
        //Assert.equal(a,100000000000000000000,"Balance should be 100000000000000000000");
        Assert.equal(a,100000000000000000000,"Balance should be 100000000000000000000");
        Assert.equal(a,100 ether,"Balance should be 100 ether");
        
    }

    function testAddressDataType2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        uint a = meta.demoAddressDataType2();
        
        // This can be diffrent every time as I'm testing first address in the list
        // of address provided by 'ganache-cli'

        // Uncomment for Testing
        //Assert.equal(a,95090858000000000000,"Balance should be 95090858000000000000");
        
    }

    // Incomplete
    function testAddressDataType3() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        uint a = meta.demoAddressDataTypeTransfer();
       
        Assert.equal(a,0,"Balance should be 5");
    }

}