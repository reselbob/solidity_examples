// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract StructHelper {
        function getName() public pure returns (bytes23) {
        bytes23 bb = bytes23("Bob");
        return (bb);
    }

    function getDescription() public pure returns (bytes32) {
        bytes32 bb = bytes32("Cool Bob");
        return (bb);
    }

    function getPicture() public pure returns (bytes10) {
        bytes10 bb = bytes10("bob.jpg");
        return (bb);
    }

    function getLocation() public pure returns (bytes20) {
        bytes20 bb = bytes20("bob.jpg");
        return (bb);
    }

}