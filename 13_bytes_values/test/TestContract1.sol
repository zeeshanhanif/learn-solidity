pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    function testBytesValues1() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        bytes1 a = meta.getbyteaa();
        
        Assert.equal(int(a),101,"A should be 101");
        Assert.equal(a,bytes1(101),"A should be 101");
        
    }

    function testBytesValues2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        bytes1 a = meta.getbytebb();
        
        Assert.equal(int(a),10,"A should be 10");
        
    }

    function testBytesValues3() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        bytes1 a = meta.getbytecc();
        
        Assert.equal(a,"a","A should be a");
        
    }

    function testBytesValues4() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        bytes2 a = meta.getbytedd();
        
        Assert.equal(a,"he","A should be a");
        
    }

    function testBytesValues5() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        bytes3 a = meta.getbyteee();
        
        Assert.equal(a,"hel","A should be a");
        
    }

}