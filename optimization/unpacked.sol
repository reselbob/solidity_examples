// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Unpacked {
    struct NotOptimized {
        uint8 a;
        uint8 b;
        uint8 c;
        uint8 d;
        bytes32 e;
        bytes16 h;
        bytes32 f;
        bytes16 g;
    }

    struct NotOptimized2 {
        uint64 a;
        uint256 b;
        uint64 c;
    }

    NotOptimized example;
    NotOptimized2 example2;
    
    function fillStruct() public {
        NotOptimized memory someStruct = NotOptimized(1,2,3,4,"a","b","c","d");
        example = someStruct;
    }

    function fillStruct2() public {
        NotOptimized2 memory someStruct = NotOptimized2(100,400,200);
        example2 = someStruct;
    }
}
