pragma solidity ^0.4.23;
contract StateVariables {

    //1) Variables declared in a contract that are not within any function are called state variables
    //2) State variables store the current values of the contract. 
    //3) The allocated memory for a state variable is statically assigned and it cannot change during the lifetime of the contract.
    //4) Each state variable has a type that must be defined statically. 
    //5) The Solidity compiler must ascertain the memory allocation details for each state variables and so the state variable data type must be declared.
    
    // State Variables
    int age = 40; // by default its qualifiers is 'internal'
    int private privateAge = 40; 
    int public publicAge = 40;
    int constant CONSTANT_AGE = 40; // by default its qualifiers is 'internal'
    int public constant CONSTANT_AGE_2 = 40;
    int constant public CONSTANT_AGE_3 = 40;

    function getInternalAge() public returns (int) {        
        return age;
    }    
    function getPrivateAge() public returns (int) {        
        return privateAge;
    }    
    function getPublicAge() public returns (int) {        
        return publicAge;
    }    
    function getConstantAge() public returns (int) {        
        return CONSTANT_AGE;
    } 
    function getConstantAge2() public returns (int) {        
        return CONSTANT_AGE_2;
    } 
    function getConstantAge3() public returns (int) {        
        return CONSTANT_AGE_3;
    }    
}