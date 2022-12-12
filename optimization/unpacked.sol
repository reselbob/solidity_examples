// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Unpacked {
    struct NotOptimized {
        uint64 a;
        uint256 b;
        uint64 c;
    }

    NotOptimized example;
    
    function fillStruct() public {
        NotOptimized memory someStruct = NotOptimized(100, 400, 200);
        example = someStruct;
    }
}