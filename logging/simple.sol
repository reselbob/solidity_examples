// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Simple {
    import LibOperations from “./library.sol”;
    
    using MathLib for uint;
    
    uint256 grand_total;
    
    function update() public {
        uint a = 0;
        grand_total= a.increment()
    }
}
