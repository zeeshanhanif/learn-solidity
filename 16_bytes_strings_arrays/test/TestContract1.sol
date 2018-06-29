pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    function testBytesArray() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        uint a = meta.demoBytesArray();
        
        Assert.equal(a,2,"A should be 2");
        
    }

    function testBytesArray2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        uint a = meta.demoBytesArray2();
        
        Assert.equal(a,5,"A should be 2");
        
    }

    function testBytesArray3() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        // Must specify memory keyword, otherwise will not compile
        // Because ref types returned from functions are at memory location
        bytes memory a = meta.demoBytesArray3();
        bytes memory b = new bytes(3);
        b = "Hello World";
        // Not allowed to compare directly variables
        //Assert.equal(a,b,"A should be 'Hello World'");
        //Assert.equal(a,"Hello World","A should be 'Hello World'");

        Assert.equal(a[0],"H","A should be 'H'");
        Assert.equal(a[0],b[0],"A should be 'H'");
        Assert.equal(a[1],"e","A should be 'e'");
        Assert.equal(a[0],byte(72),"A should be 'e'");
        
    }

    function testBytesArray4() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        bytes memory a = meta.demoBytesArray4();
        
        Assert.equal(a.length,3,"A.length should be 3");
        Assert.equal(a[0],"H","A[0] should be 'H'");
        Assert.equal(a[1],"e","A[1] should be 'e'");
        Assert.equal(a[2],byte(65),"A[2] should be 65");
        Assert.equal(a[2],"A","A[2] should be 'A'");
        
    }

    function testBytesArray5() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        bytes memory a = meta.demoBytesArray5();
        
        Assert.equal(a.length,19,"A.length should be 19");
        
    }

    function testStrings1() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        string memory a = meta.demoStrings1();
        
        Assert.equal(a,"Hello World","A should be 'Hello World'");
        
    }

    function testConcatStrings2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        string memory a = meta.demoStrings2();
        Assert.equal(a,"HelloWorld","A should be 'HelloWorld'");
        
    }

    function testStringArray() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        string memory a = meta.demoStringArray();
        Assert.equal(a,"World","A should be 'World'");
        
    }
}