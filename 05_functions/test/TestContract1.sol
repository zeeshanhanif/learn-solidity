pragma solidity ^0.4.19;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    

    
    function testPublicFunction() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        meta.setAge(5);
        meta.setAge2(44);
    }

    // internal and private can not be called from outside
    function testInternalAndPrivateFunction() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        
        // Will not work because qualifier is internal
        //meta.doSomeWork();

        // Will not work because qualifier is private
        //meta.doSomeWork2();
    }

    function testExternalFunction() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        Assert.equal(meta.doSomeWork3(),"Do Some Work External","Testing External function, value should be 'Do Some Work External'");
    }

    function testExternalInsidePublicFunction() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        Assert.equal(meta.doSomeWork4(),"Do Some Work public","Testing External inside public function, value should be 'Do Some Work public'");
    }


}