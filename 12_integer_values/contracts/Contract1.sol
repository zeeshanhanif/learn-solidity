pragma solidity ^0.4.23;
contract Contract1 {

    function demoIntAndUint() public returns (int) {
        int a = 5;
        int b = 6;

        int8 c = 76;
        int16 d = 120;

        a = b;
        d = c;
        
        a = d;
        return d;
    }

    function demoIntAndUint2() public returns (int) {
        // uint and int can not be assigned to each other
        // int is alias to int256
        int a = 5;
        
        int8 b = 76;
        
        //b = a; // smaller datatype can not hold value of larger datatype
        a = b;
        return a;
    }

    function demoIntAndUint3() public returns (int) {
        uint8 a = 5;
        int8 b = 76;
        
        // casting
        a = uint8(b);
        return a;
    }

    function demoIntAndUint4() public returns (int) {
        uint8 a = 5;
        int8 b = -76;
        
        // casting, this will change value because unit8 can only store positive number
        a = uint8(b);
        return a;
    }


}