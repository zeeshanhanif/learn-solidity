pragma solidity ^0.4.23;
contract Contract1 {

    int public age;
    event Log(string message);

    // Default visibility is public
    function setAge(int a) {
        age = a;
    }

    function setAge2(int a) public {
        age = a;
    }

    function doSomeWork() internal returns (string) {
        return "Do Some Work Internal";
    }

    function doSomeWork2() private returns (string) {
        return "Do Some Work Private";
    }

    function doSomeWork3() external returns (string) {
        return "Do Some Work External";
    }

    function doSomeWork4() public returns (string) {

        // This line will give compilation error because 
        // external functions can only be called from outside
        // Uncomment this and it will give compile time error
        //doSomeWork3();
        
        return "Do Some Work public";
    }
}