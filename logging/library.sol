// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

library LibOperations {
    event BeforeIncrement(address indexed _from, uint256 _value);
    event AfterIncrement(address indexed _from, uint256 _value);

    function increment(uint256 _a, address _sender) public returns (uint256) {
        emit BeforeIncrement(_sender, _a);
        uint256 i = _a + 1;
        emit AfterIncrement(_sender, i);
        return i;
    }
}
