pragma solidity ^0.4.19;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {

    function testConstantFunction() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        meta.setAge(5);
    }

    function testConstantFunction2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        
        Assert.equal(meta.doSomeWork(),5,"Testing constant function, value should be 5");
        Assert.equal(meta.doSomeWork2(),5,"Testing constant function, value should be 5");
    }

    function testViewFunction() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        
        Assert.equal(meta.doSomeWork3(),10,"Testing view function, value should be 5");
    }

    function testPureFunction() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        
        Assert.equal(meta.doSomeWork4(3),3,"Testing pure function, value should be 5");
    }

    function testMultipleReturnFunction() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        // both of the below lines will work
        //var (a, b) = meta.doSomeWork6(3);
        //(int a, int b) = (5,6);
        (int a, string memory b)= meta.doSomeWork6(3);
        Assert.equal(a,5,"Testing multiple return funciton, A should be 5");
        Assert.equal(b,"hello","Testing multiple return funciton, B should be hello");
    }
}