// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract GasEater {

    function getAsString() public pure returns (string memory)  {
        string memory name = "Cool Programmer";
        return (name);
    }


    function getAsBytes32() public pure returns (bytes32) {
        bytes32 name = "Cool Programmer";
        return (name);
    }

    function useAssert(uint256 a, uint256 b) public pure returns (uint256)  {
        assert(a + b != 0);
        return a + b;
    }

    function useRequire(uint256 a, uint256 b) public pure returns (uint256)  {
        require(a + b != 0);
        return a + b;
    }

}