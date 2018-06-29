pragma solidity ^0.4.24;
contract Contract1 {
    
    // All addresses used here are from 'ganache-cli'
    // so while running this example use your addresses

    uint initialBalance = 100 ether;
    
    function demoAddressDataType() public returns (uint) {
        
        // Some random address in the list of 'ganache-cli' addresses but not
        // the first one
        address add = 0x787d793cc5353f86b4025f40a5583c9ac63a0c52;
        //0x787d793cc5353f86b4025f40a5583c9ac63a0c52
        return add.balance;
    }

    function demoAddressDataType2() public returns (uint) {
        // First address in the list of 'ganache-cli' addresses
        // all transactions are done with first address so balance can very
        // for everyone
        address add = 0x38f671c36acb116dc837d5cc4a6be2be72da2c4a;
        //0x38f671c36acb116dc837d5cc4a6be2be72da2c4a
        return add.balance;
    }

    // Incomplete
    function demoAddressDataTypeTransfer() public returns (uint) {
        /*
        address add1 = 0x53c9f8756a0458aca4c703d2be7e03a5e720b678;
        address add2 = 0x25c15a2304e43cff2a8b22a7aff34a8235d6b8df;
        //0x1c9d306c82592eDbC6ac6f90F8f10ab5974D0F5E
        add1.transfer(4000 wei);
        return add1.balance;
        */
        return 0;
    }



}