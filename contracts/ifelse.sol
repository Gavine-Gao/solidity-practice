// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract condition {
    function testCondition(uint256 x) public pure returns (uint256) {
        if (x == 1) {
            return 0;
        } else if (x == 2) {
            return 1;
        } else {
            return 3;
        }
    }

    function ternary(uint256 x) public pure returns (uint256) {
        return x == 0 ? 1 : 2;
    }
}
