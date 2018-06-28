pragma solidity ^0.4.19;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/HelloWorld.sol";

contract TestHelloWorld {    
    function testHelloWorld() public { 
        HelloWorld meta = HelloWorld(DeployedAddresses.HelloWorld());
        Assert.equal(meta.welcome(),"Hello World","Hello World String value test");
    }
}