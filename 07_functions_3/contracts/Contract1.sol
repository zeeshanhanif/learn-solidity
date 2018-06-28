pragma solidity ^0.4.23;
contract Contract1 {

    uint public myBalance;

    function doAcceptEther() public payable {
        myBalance += msg.value;
    }

}