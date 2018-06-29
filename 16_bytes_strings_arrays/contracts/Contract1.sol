pragma solidity ^0.4.23;

contract Contract1 {

    function demoBytesArray() public returns (uint) {
        
        // bytes is referance type and by default it is storage level type
        // you have to specify memory keywork for local
        
        // Important: bytes can not be assigned directly with values so
        // follwoing are INVALID:
        // bytes a = 45;
        // bytes b = "Hello World";
        // bytes c = byte(32);
        
        // This bytes type is different from bytes1, bytes2 ... bytes32
        bytes memory b1 = new bytes(2);
        return b1.length;
    }

    bytes b1 = new bytes(2);
    function demoBytesArray2() public returns (uint) {
        
        // Length modificaiton not allowed on memory location data
        //bytes memory b1 = new bytes(2);
        //b1.length = 5;

        b1.length = 5;
        return b1.length;
    }

    function demoBytesArray3() public returns (bytes) {
        bytes memory b = new bytes(3);
        b = "Hello World";
        return b;
    }

    bytes b4 = new bytes(2);
    function demoBytesArray4() public returns (bytes) {
        // Push will not work with memory variable
        //bytes memory b = new bytes(3);
        //b.push("Hello World");
        b4 = "He";
        b4.push(byte(65));
        return b4;
    }

    //String assignment in state variable is allowed
    bytes b5 = "Hello World Testing";
    function demoBytesArray5() public returns (bytes) {
        return b5;
    }

    // Strings
    function demoStrings1() public returns (string) {
        string memory st = "Hello World";
        return st;
    }

    // String concatination is not allowed for now
    // Current version of solidity is 0.4.24
    //https://solidity.readthedocs.io/en/v0.4.24/frequently-asked-questions.html#what-are-some-examples-of-basic-string-manipulation-substring-indexof-charat-etc
    // Manual String concatenation
    int[] a = [int(1),2,3];
    function demoStrings2() public returns (string) {
        string memory st1 = "Hello";
        string memory st2 = "World";
        
        // Not allowed
        //string memory st3 = st1 + st2;
        //string memory st3 = st1.concat(st2);
        
        /*
        // This is also not allowed as you can not create bytes(st1) which
        // locate in memory and bytes b1 which is storage type.
        // if you try to create bytes in memory like this
        // bytes memory b1 = new bytes(3) then push method will not work in it

        bytes b1 = new bytes(3);
        b1 = bytes(st1);
        bytes b2 = st2;
        b1.push(b2[0]);
        b1.push(b2[1]);
        b1.push(b2[2]);
        b1.push(b2[3]);
        */
        
        // Implementing it without loops for now
        bytes memory bb1 = bytes(st1);
        bytes memory bb2 = bytes(st2);
        bytes memory bb0 = new bytes(bb1.length + bb2.length);
        
        uint index = 0;
        bb0[index++] = bb1[0];
        bb0[index++] = bb1[1];
        bb0[index++] = bb1[2];
        bb0[index++] = bb1[3];
        bb0[index++] = bb1[4];

        bb0[index++] = bb2[0];
        bb0[index++] = bb2[1];
        bb0[index++] = bb2[2];
        bb0[index++] = bb2[3];
        bb0[index++] = bb2[4];
        string memory st3 = string(bb0);

        
        a.length = 5;
        return st3;
    }

    function demoStringArray() public returns (string) {
        // Array for string type will have same rules as for any other array
        // of int
        string[2] memory st = ["Hello","World"];
        return st[1];
    }

}