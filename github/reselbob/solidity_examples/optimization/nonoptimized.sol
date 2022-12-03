// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Nonoptimzed {
    uint8 a;
    uint16 b;
    uint8 c;

    /**
     * @dev adds the numbers together
     * @param _a, number of unit8
     * @param _b, number of unit16
     * @param _c, number of unit8
     */
    function add(
        uint8 _a,
        uint16 _b,
        uint8 _c
    ) public returns (uint8) {
        a = _a;
        b = _b;
        c = _c;

        return a + uint8(b) + c;
    }

    /**
     * @dev Return value
     * @return value of 'number'
     */
    function multiple(
        uint8 _a,
        uint16 _b,
        uint8 _c
    ) public returns (uint8) {
        a = _a;
        b = _b;
        c = _c;

        return a * uint8(b) * c;
    }
}
