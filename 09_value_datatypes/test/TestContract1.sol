pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {
    
    function testUpdateAge() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        // Value should be 45 before update and 55 after updated
        Assert.equal(meta.age(),45,"Age should be 45");
        meta.updateAge();
        Assert.equal(meta.age(),55,"Age should be 55");
    }


    function testUpdateAge2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        uint updatedAge = meta.updateAge2();
        // After update state variable remains same 
        Assert.equal(meta.age(),55,"Age should be 55");
        Assert.equal(updatedAge,60,"Updated Age should be 60");
    }

    function testUpdateCount() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        meta.updateCount();
        Assert.equal(meta.age(),70,"Age should be 70");
        Assert.equal(meta.count(),55,"Count should be 55");
    }

    function testAccessAgeAndUpdate() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        // Access State variable of contract and try to update it
        // it will change local variable but will not effect state variable
        uint age = meta.age();
        age = 12;
        Assert.equal(age,12,"Local Age should be 12");
        Assert.equal(meta.age(),70,"Age should be 70");
    }

}