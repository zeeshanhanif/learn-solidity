pragma solidity ^0.4.23;
contract Contract1 {

    int[3] a = [3,4,5];
    int[3] b;
    function demoFixedSizeStateArray() public returns (int) {
        a[1] = 5;
        b = [21,22,23];
        uint[3] memory bb = [uint(23),34,4];
        int[3] memory c = [int(31),32,33]; // explicitly mentioned as int which is int256
        c[2] = 56;
        return a[1];
    }


    // Return type and function parameter must have to specify size
    // of array to accept in parameter and return from function
    function demoFixedSizeArrayReturns() public returns (int[3]) {
        int[3] memory c = [int(31),32,33];
        return c;
    }


    int[3] c;
    function demoFixedSizeStateArray2() public returns (int) {
        // completely different from other languages,
        // here it initialized all elments of array with default 0
        // we have not initialized the array 'c'
        return c[1]; // returns 0 
    }

    function demoFixedSizeStateArray3() public returns (int) {
        c[2] = 45;
        return c[2];
    }

    function demoFixedSizeMemoryArray4() public returns (int) {
        // completely different from other languages,
        // here it initialized all elments of array with default 0
        int[3] memory d; // = [int(2),3,4];
        return d[1];
    }
}