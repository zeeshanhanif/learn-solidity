pragma solidity ^0.4.23;
contract Contract1 {

    struct MyStruct {
        string name;
        uint age;
        bool isMarried;
    }

    // Empty Struct allowed
    // It is deprecated
    struct MyStructNew {
    }

    MyStruct public myStruct = MyStruct("Test",34,false);
    MyStruct myStruct2 = MyStruct("Test2",44,true);
    MyStruct myStruct3;

    MyStructNew myStructNew = MyStructNew();

    
    // Can not return Struct from function its in experiment and
    // need to use below line, but also with that not working properly
    // pragma experimental ABIEncoderV2;
    /*
    function getMyStruct() public returns (MyStruct) {
        return myStruct;
    }
    */

    function getNameFromStruct() public returns (string) {
        return myStruct.name;
    }

    function getNameFromStruct2() public returns (string) {
        return myStruct2.name;
    }

    function demoStruct3() public returns (string) {
        MyStruct memory mystr1 = MyStruct("Test3",23,false);
        myStruct3 = MyStruct("Test4",43,true);

        return mystr1.name;
        //return myStruct2.name;
    }
    

}