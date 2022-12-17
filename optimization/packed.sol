// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Packed {
    struct Optimized {
        uint64 number_1;
        uint64 number_3;
        uint256 number_2;
    }

    Optimized example;

    function fillStruct() public {
        example = Optimized(100, 200, 400);
    }
}