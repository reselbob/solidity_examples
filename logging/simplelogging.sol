// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract SimpleLogging {
    uint64 number_1;

    event BeforeUpdate(uint64 oldValue);
    event AfterUpdate(uint64 newValue);

    function update(uint64 mynum) public {
        emit BeforeUpdate(number_1);
        emit BeforeUpdate(number_1);
        number_1 = mynum;
        emit AfterUpdate(number_1);
        emit AfterUpdate(number_1);
    }
}
