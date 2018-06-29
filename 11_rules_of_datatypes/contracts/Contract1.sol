pragma solidity ^0.4.23;
contract Contract1 {

    //Rule 1
    // State Variables are storage variables 
    int public stateVar1 = 5;

    // Rule 2 Starts
    int public stateVar2 = 5;
    int[3] public stateRefVar3 = [int(3),4,5];
    // function parameter are memory data variables
    function changeMemoryValueType(int a) public returns (int) {
        a = stateVar2;
        // changing a will not change stateVar2
        a = 6;
        return stateVar2;
    }

    // Rule 2
    // function ref parameter are also memory data variables
    function changeMemoryRefType(int[3] a) public returns (int) {
        a = stateRefVar3;
        a[1] = 45;
        return stateRefVar3[1];
    }

    // Rule 3 Ends

    // Rule 3 starts
    int[2] public rule3StateRefVar = [int(1),2];
    function demoRule3RefAndVal1 () public {
        int a = 5; // Default to memoery
        
        // Default to Storage but this will not work because it needs values 
        // from storage data type which can come from state variable
        //int[2] arr = [int(1),2]; 

        // b is default to storage in this case and need state variable
        // changs in value of b will change rule3StateRefVar
        // changs in value of rule3StateRefVar will change b
        int[2] b = rule3StateRefVar; 

        // changs in value of d will NOT change rule3StateRefVar
        // changs in value of rule3StateRefVar will NOT change d
        int[2] memory d = rule3StateRefVar;

        // overriding default form memory to storage
        // if you want to use ref type then you have you use memory keyword
        int[3] memory c = [int(11),12,13]; 
        
        b[1] = 5; // rule3StateRefVar[1] also changed to 5
        d[0] = 18; // rule3StateRefVar[0] will NOT change and stay 1
    }

    function demoRule3RefAndVal2 () public returns (string) {
        
        // Default to Storage but this will not work because it needs values 
        // from storage data type which can come from state variable
        //string a = "Hello World";

        // To make it work you need to provide memory keyword 
        string memory a = "Hello World";

        // Value type can not be overridden to stroage they can only be memory
        //int storage b = 45;

        return a;
        
    }

    mapping(int => string) keyValueList;
    function demoRule3RefAndVal3 () public {
        
        // local mapping variable must use state variable
        // it can not be declared locally 
        mapping(int => string) keyValueListLocal = keyValueList;
        keyValueListLocal[23] = "Hello";
    }

    // Rule 3 ends

    // Rule 4 does not have example

    // Rule 5 starts
    int public rule5StateVar1 = 10;
    int public rule5StateVar2 = 20;
    function demoStorageToStorageValueAssignment1() public returns (int) {

        // Assignment of value type from storage variable to another storage
        // variable creates copy so both maintain separate copy of data
        rule5StateVar1 = rule5StateVar2;
        rule5StateVar2 = 60;

        return rule5StateVar1; 
    }

    int[2] rule5StateVar3 = [int(1),2];
    int[2] rule5StateVar4 = [int(3),4];
    function demoStorageToStorageRefAssignment2() public returns (int) {


        // This is diffrent from almost all programming languages
        // as in other programming languages assignment of referance 
        // variable to another referance variable create referance and
        // both variable points to same object
        // BUT here in solidity it creates copy of ref variable and both
        // points to different object
        rule5StateVar3 = rule5StateVar4;
        rule5StateVar4[1] = 10;

        return rule5StateVar3[1];  // returns 4
    }

    // Rule 5 ends



    // Rule 6 starts
    int public rule6StateVar1 = 10;
    function demoMemoryToStorageValueAssignment1() public returns (int) {
        // Assignment from memory variable to storage variable creates copy
        // so both maintain separate copy of data
        int rule6LocalVar = 20;
        rule6StateVar1 = rule6LocalVar;
        rule6LocalVar = 60;

        return rule6StateVar1;  // return 20
    }

    int[2] rule6StateVar2 = [int(1),2];
    function demoMemoryToStorageRefAssignment2() public returns (int) {
        // Assignment from memory variable to storage variable creates copy
        // so both maintain separate copy of data

        // This is also diffrent from other programming languages
        // In other language it creates referance and both variable points
        // to same data 
        // BUT here both points to separate copy of data
        int[2] memory rule6LocalVar1 = [int(3),4];
        
        rule6StateVar2 = rule6LocalVar1;
        rule6LocalVar1[1] = 10;

        return rule6StateVar2[1];  // returns 4
    }

    // Rule 6 ends


    // Rule 7 starts -- Nothing special same as rule 6 and 5
    int public rule7StateVar1 = 10;
    function demoStorageToMemoryValueAssignment1() public returns (int) {
        // Assignment from storage variable to memory variable creates copy
        // so both maintain separate copy of data
        int rule7LocalVar = 20;
        rule7LocalVar = rule7StateVar1;
        rule7StateVar1 = 60;

        return rule7LocalVar;  // return 10
    }

    int[2] rule7StateVar2 = [int(1),2];
    function demoStorageToMemoryRefAssignment2() public returns (int) {
        // Assignment from storage variable to memory variable creates copy
        // so both maintain separate copy of data

        // This is also diffrent from other programming languages
        // In other language it creates referance and both variable points
        // to same data 
        // BUT here both points to separate copy of data
        int[2] memory rule7LocalVar1 = [int(3),4];
        
        rule7LocalVar1 = rule7StateVar2;
        rule7StateVar2[1] = 10;

        return rule7LocalVar1[1];  // returns 2
    }

    // Rule 7 ends



    // Rule 8 starts -- This also same as others but the difference is 
    // assignment of memory to memory of referance type DO NOT create copy
    
    function demoMemoryToMemoryValueAssignment1() public returns (int) {
        // Assignment from memory variable to memory variable creates copy
        // so both maintain separate copy of data
        int rule8LocalVar1 = 20;
        int rule8LocalVar2 = 30;
        rule8LocalVar1 = rule8LocalVar2;
        rule8LocalVar2 = 60;

        return rule8LocalVar1;  // return 30
    }
    
    function demoMemoryToMemoryRefAssignment2() public returns (int) {
        // Assignment from memory variable to memory for referance variable
        // DO NOT creates copy so both have same data

        int[2] memory rule8LocalVar1 = [int(1),2];
        int[2] memory rule8LocalVar2 = [int(3),4];
        
        // This works are ref type, changes in one will change other
        rule8LocalVar1 = rule8LocalVar2;
        rule8LocalVar2[1] = 10;

        return rule8LocalVar1[1];  // returns 10
    }

    // Rule 8 ends









  
}