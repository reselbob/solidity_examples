// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Simple {
    
    address public contract_owner;

    constructor(){
        contract_owner = msg.sender;
    }
    
    struct MyStruct {
        uint64 number_1;
        uint64 number_2;
        uint64 number_3;
    }

     MyStruct public a_struct;

    event BeforeIncrement(address indexed _from, MyStruct _value);
    event AfterIncrement(address indexed _from, MyStruct _value);

    function updateUint() public {
        emit BeforeIncrement(msg.sender, a_struct);
        a_struct = MyStruct(
            a_struct.number_1 + 1,
            a_struct.number_2 + 1,
            a_struct.number_3 + 1
        );
        emit AfterIncrement(msg.sender, a_struct);
    }
}
