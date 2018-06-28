pragma solidity ^0.4.19;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/StateVariables.sol";

contract TestStateVariables {
    
    function testGetInternalAge() public { 
        StateVariables meta = StateVariables(DeployedAddresses.StateVariables());
        Assert.equal(meta.getInternalAge(),40,"Testing State Variables should be 40");
        
        // meta.age is not visible outside of contract
        // Uncomment below line and it will give error
        //Assert.equal(meta.age,40,"Testing State Variables should be 40");
        //Assert.equal(meta.age(),40,"Testing State Variables should be 40");
    }

    function testGetPrivateAge() public { 
        StateVariables meta = StateVariables(DeployedAddresses.StateVariables());
        Assert.equal(meta.getPrivateAge(),40,"Testing Private Age State Variables should be 40");
        
        // Not visible
        //Assert.equal(meta.privateAge(),40,"Testing State Variables direct access");
    }

    function testGetPublicAge() public { 
        StateVariables meta = StateVariables(DeployedAddresses.StateVariables());
        Assert.equal(meta.getPublicAge(),40,"Testing Public age State Variables should be 40");
        
        // meta.publicAge IS visible outside of contract
        // Solidity Provides function with the name of public variable to access its value
        Assert.equal(meta.publicAge(),40,"Testing State Variables direct access should be 40");

        // This will not work
        //Assert.equal(meta.publicAge,40,"Testing State Variables direct access");
    }

    function testGetConstantAge() public { 
        StateVariables meta = StateVariables(DeployedAddresses.StateVariables());
        Assert.equal(meta.getConstantAge(),40,"Testing Constant Age State Variables should be 40");
        
        // Will not work as Contant age is internal 
        //Assert.equal(meta.CONSTANT_AGE(),40,"Testing Constant Age State Variables");
    }

    function testGetConstantAge2() public { 
        StateVariables meta = StateVariables(DeployedAddresses.StateVariables());
        Assert.equal(meta.getConstantAge2(),40,"Testing public Constant Age State Variables should be 40");
        Assert.equal(meta.CONSTANT_AGE_2(),40,"Testing public Constant Age State Variables should be 40");
    }

    function testGetConstantAge3() public { 
        StateVariables meta = StateVariables(DeployedAddresses.StateVariables());
        Assert.equal(meta.getConstantAge3(),40,"Testing Constant public Age State Variables should be 40");
        Assert.equal(meta.CONSTANT_AGE_3(),40,"Testing Constant public Age State Variables should be 40");
        
    }
}