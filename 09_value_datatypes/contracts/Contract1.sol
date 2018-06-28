pragma solidity ^0.4.23;
contract Contract1 {

    uint public age = 45;
    uint public count;

    // Updating Value data type state variable
    function updateAge() public {
        age = 55;
    }

    function updateAge2() public returns (uint) {
        return receiveAgeAndUpdate(age);
    }

    // Receive state variable in paramerter but create a separate copy of
    // value type data will not effect state variable
    function receiveAgeAndUpdate(uint a) public returns (uint) {
        a = 60;
        return a;
    }

    // assigning value of on state variable to another will create copy
    // so chaning the one state variable will not effect other
    function updateCount() public {
        count = age;
        age = 70;
    }

}