// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Unpacked {
    struct NotOptimized {
        uint64 number_1;
        uint256 number_2;
        uint64 number_3;
    }

    NotOptimized example;

    function fillStruct() public {
        example = NotOptimized(100, 400, 200);
    }
}