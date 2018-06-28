pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {

    //This will set balance of this Test Contract to 50 ether
    uint public initialBalance = 50 ether;
    
    // Test payable function 
    function testBalance() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        
        // This way of getting balance is depricated new way is
        // address(this).balance
        uint val = this.balance;
        
        // If we use direct literal value in both first and second argument
        // then it will not compile
        //Assert.equal(5,5,"Testing view function");
        
        Assert.equal(val,50 ether,"Test balance of Test Contract, value should be 50 ether");
    }

    
    function testBalance2() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        uint val = address(this).balance;
        
        Assert.equal(val,50 ether,"Test balance of Test Contract, value should be 50 ether");
    }

    // Test payable function 
    function testPaybleFunction() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        meta.doAcceptEther.value(20 wei)();

        Assert.equal(address(meta).balance, 20 wei, "Test paybale function, contract balance should be 20 wei");
        Assert.equal(meta.myBalance(), 20 wei, "Test paybale function, contract balance should be 20 wei");
    }
}