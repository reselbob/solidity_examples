// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// import structHelper.sol from current directory
import "./structHelper.sol";

/**
 * @title Nonoptimzed
 * @dev A demonstration contract to represents unoptimized code
 */
contract Nonoptimzed {
    struct Unpacked {
        bool isMarried;
        bytes32 description;
        bytes23 name;
        bytes10 picture;
        bytes20 location;
        uint64 id;
        uint8 age;
    }

    function fillStruct() public {
        StructHelper helper = new StructHelper();
        Unpacked memory unpacked;
        uint64 _id = 123;
        bool _isMarried = true;
        bytes23 _name = helper.getName();
        bytes10 _picture = helper.getPicture();
        bytes20 _location = helper.getLocation();
        bytes32 _description = helper.getLocation();
        uint8 _age = 69;

        unpacked = Unpacked(
            _isMarried,
            _description,
            _name,
            _picture,
            _location,
            _id,
            _age
        );
    }
}
