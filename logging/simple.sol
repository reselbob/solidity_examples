// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
/*
The purpose of this contract is to demonstrate using events to log
behavior within the contract.

The contract publishes two public data members:

  - contract_owner of type address
  - a_struct which is a custom struct of type MyStruct

and a single function named update()
*/

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

    event BeforeUpdate(address indexed _from, MyStruct _value);
    event AfterUpdate(address indexed _from, MyStruct _value);

    /**********
    * The purpose of the function is to update the
    * the MyStruct struct by incrementing the value
    * of its members by 1
    **********/
    function update() public {
        emit BeforeUpdate(msg.sender, a_struct);
        a_struct = MyStruct(
            a_struct.number_1 + 1,
            a_struct.number_2 + 1,
            a_struct.number_3 + 1
        );
        emit AfterUpdate(msg.sender, a_struct);
    }
}
