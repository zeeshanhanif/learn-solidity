pragma solidity ^0.4.23;
contract Contract1 {

    int public age;
    
    function setAge(int a) public constant {
        // Changing state variable in constant function is not allowed
        // This will raise warning but no error, this is not
        // strictly enforced yet
        age = a;
    }

    
    function doSomeWork() public constant returns (int) {
        // No warning or error works fine
        // Accessing state variable in local and returning from
        // function 
        int b = age;
        return b;
    }

    
    function doSomeWork2() public constant returns (int) {
        // No warning or error works fine
        // Returning state variable from function 
        return age;
    }

    function doSomeWork3() public view returns (int) {
        // Not allowed to change state variables, but shows only warning 
        age = 10;
        return age;
    }

    // pure function 
    function doSomeWork4(int b) public pure returns (int) {
        // Compilation error, on both changing state variable or access
        // state variable

        // access or assignment not allowed
        //age = b;  // not allowed, uncoment and try
        //b = age;  // not allowed, uncoment and try
        return b;
    }

    // Returning multiple values from function
    function doSomeWork6(int c) public returns (int,string) {
        return (5,"hello");
    }

}