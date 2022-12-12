// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Packed {
   struct Optimized {
        uint64 a;
        uint64 b;
        uint256 c;
    }

    Optimized example;
    
   function fillStruct() public {
        Optimized memory someStruct = Optimized(100,200, 400);
        example = someStruct;
    }
}