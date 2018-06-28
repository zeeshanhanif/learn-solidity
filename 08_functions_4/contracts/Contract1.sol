pragma solidity ^0.4.23;
contract Contract1 {

    uint public mybalance;

    function doAcceptEther() public payable {
        mybalance += msg.value;
    }

    function () public payable {
        mybalance += msg.value;
    }

}