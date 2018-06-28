pragma solidity ^0.4.24;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Contract1.sol";

contract TestContract1 {

    //This will set balance of this Test Contract to 10 ether
    uint public initialBalance = 50 ether;

    // Test payable function 
    function testTransferFunction() public { 
        Contract1 meta = Contract1(DeployedAddresses.Contract1());
        address(meta).transfer(50 wei);

        Assert.equal(address(meta).balance,50 wei,"Test paybale function");
        Assert.equal(meta.mybalance(),50 wei,"Test paybale function");
    }

}