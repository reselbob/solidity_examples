// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Optimzed
 * @dev A demonstration contract to represents optimzed code
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Optimzed {
    struct Packed {
        uint64 id;
        uint8 age;
        bytes23 name;
        bytes32 description;
        bytes20 location;
        bytes10 picture;
        bool isMarried;
    }

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

    function fillStruct() public pure {
        uint64 _id = 123;
        bool _isMarried = true;
        bytes23 _name = getName();
        bytes10 _picture = getPicture();
        bytes20 _location = getLocation();
        bytes32 _description = getLocation();
        uint8 _age = 69;
        Packed memory packed;
        packed = Packed(
            _id,
            _age,
            _name,
            _description,
            _location,
            _picture,
            _isMarried
        );
    }
}
