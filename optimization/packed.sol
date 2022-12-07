// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Packed {
    struct Optimized {
         uint8 a;
        uint8 b;
        uint8 c;
        uint8 d;
        bytes16 e;
        bytes16 h;
        bytes32 f;
        bytes32 g;
    }

   struct Optimized2 {
        uint64 a;
        uint64 b;
        uint256 c;
    }

    Optimized example;
    Optimized2 example2;
    
   function fillStruct() public {
        Optimized memory someStruct = Optimized(1,2,3,4,"a","b","c","d");
        example = someStruct;
    }

    function fillStruct2() public {
        Optimized2 memory someStruct = Optimized2(100,200,400);
        example2 = someStruct;
    }
}