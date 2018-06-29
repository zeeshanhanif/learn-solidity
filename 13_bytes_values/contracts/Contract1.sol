pragma solidity ^0.4.23;
contract Contract1 {

    // bytes store binary data
    function getbyteaa() public returns (bytes1) {
        int a = 0x65;
        bytes1 aa = 0x65;
        return aa; //returns 0x65
    }

    function getbytebb() public returns (bytes1) {
        bytes1 bb = 10;
        return bb; //returns 10
    }

    // For 1 letter use bytes3
    function getbytecc() public returns (bytes1) {
        bytes1 cc = "a";
        return cc; //returns "a"
    }  

    // For 2 letters use bytes2
    function getbytedd() public returns (bytes2) {
        bytes2 dd = "he";
        return dd; //returns "he"
    }   

    // For 3 letters use bytes3
    function getbyteee() public returns (bytes3) {
        bytes3 ee = "hel";
        return ee; //returns "hel"
    }   


}