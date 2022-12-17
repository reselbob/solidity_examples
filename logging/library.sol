// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

library LibOperations {
    function increment(
      uint256 a) public view returns (
      uint) {
        return (a + 1);
    }
}
