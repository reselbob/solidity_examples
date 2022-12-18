// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import {LibOperations} from "logging/library.sol";

contract Simple {
    
    using LibOperations for uint256;
    
    uint256 public grand_total;
    
    function update() public {
        uint a = grand_total;
        grand_total= a.increment(msg.sender);
    }
}
