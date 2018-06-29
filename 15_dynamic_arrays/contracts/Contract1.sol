pragma solidity ^0.4.23;
contract Contract1 {

    int[] a = [3,4,5];
    int[] b;
    function demoDynamicArray() public returns (int) {
        a[1] = 5;
        b = [21,22,23];

        // Not allowed to create dynamic memory array in this way
        //int[] memory c = [int(31),32,33];
        //c[2] = 56;
        return a[1];
    }

    function demoDynamicArray2() public returns (int) {
        int[] memory c = new int[](3);
        return c[1];
    }

    function demoDynamicArray3() public returns (int[]) {
        int[] memory c = new int[](3);
        c[1] = 31;
        return c;
    }

    int[] d = [int(2),3,4];
    function demoDynamicArray4() public returns (int) {
        //int[] memory c = new int[](3);
        //int[] memory c = [int(1),2,3];
        // push function only works on storage array and that array must be 
        // initialized already 
        d.push(34);
        return d[3];
    }

    int[] e = new int[](3);
    function demoDynamicArray5() public returns (int) {
        
        // push function only works on storage array and that array must be 
        // initialized already 
        // push function will add element at the end of array
        // in this case it will be 4th element
        d.push(34);
        return d[3];
    }


    
    int[] f;
    function demoDynamicArray6() public returns (int) {

        // This will never works because if we have dynamic array
        // then it must be initialized first    
        //f[1] = 45;
        
        
        return 5; // f[1]; // access will also require initilization first
    }
}