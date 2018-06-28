pragma solidity ^0.4.23;
contract Contract1 {

    int[3] public list = [31,32,33];
    string name = "Hello";
    struct User {
        int age;
        string name;
    }

    // internal
    User myUser = User(32,"Asad"); 

    // This will update array's particular location
    function updateList() public {
        list[1] = 45;
    }

    function updateList2() public {
        receiveListAndUpdate(list);
    }

    // function parameters are always memory data locations
    // Will not effect original variable that is passed in parameter
    function receiveListAndUpdate(int[3] a) public {
        a[2] = 55;
    }

    function updateList3() public returns (int) {
        // Reference types are always at storage location we need to
        // provide memory keywork to create local variable
        // And assigning state ref variable to memory ref variable will create a separate copy 
        // changing one will not effect other
        int[3] memory newList = list;
        newList[2] = 67;
        return list[2]; //33
    }

    function updateList4() public returns (int) {
        // By default ref type's location is storage so it works as passby ref

        //int[3] storage newList = list; //this is same below line

        // Assigning Ref state (storage) variable to ref storage local variable
        // will not create a separate copy so changing one will effect other 
        int[3] newList = list;
        newList[1] = 100;
        return list[1]; //100
    }

    

    function updateStruct() public returns (int) {
        // Assigning Ref state (storage) variable to ref storage local variable
        // will not create a separate copy so changing one will effect other 
        User myUser2 = myUser;
        myUser2.age = 40;
        return myUser.age; // 40
    }

    function updateStruct2() public returns (int) {
        // And assigning state ref variable to memory ref variable will create a separate copy 
        // changing one will not effect other
        myUser.age = 98;
        User memory myUser2 = myUser;
        myUser2.age = 50;
        return myUser.age; // 98
    }

}