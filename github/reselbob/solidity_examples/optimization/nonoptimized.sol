// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Nonoptimzed
 * @dev A demonstration contract to represents unoptimized code
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Nonoptimzed {
    uint8 a;
    uint16 b;
    uint8 c;

    /**
     * @dev Stores value in variables
     * @param _a, number of unit8
     * @param _b, number of unit16
     * @param _c, number of unit8
     */
    function store(
        uint8 _a,
        uint16 _b,
        uint8 _c
    ) public {
        a = _a;
        b = _b;
        c = _c;
    }

    /**
     * @dev adds stored numbers
     */
    function addStoredNumber() public view returns (uint8) {
        return a + uint8(b) + c;
    }

    /**
     * @dev multiplies stored numbers
     */
    function multiplyStoredNumber() public view returns (uint8) {
        return a * uint8(b) * c;
    }

    /**
     * @dev substracts stored numbers according to the order in which they are declared
     */
    function subtractStoredNumber() public view returns (int8) {
        int8 _a = int8(a);
        int8 _b = int8(uint8(b));
        int8 _c = int8(c);
        int8 result = _a - _b - _c;
        return int8(result);
    }

    /**
     * @dev a function that returns a custom greeting and demonstrates how to use string
     * @param _name, the name upon which to base the customer greeting
     */
    function sayHello(string memory _name) public pure returns (string memory) {
        string memory str_1 = "Hello ";
        string memory str_2 = _name;

        string memory result = string(abi.encodePacked(str_1, str_2));
        return result;
    }
}
