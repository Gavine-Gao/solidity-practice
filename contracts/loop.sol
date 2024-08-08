// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Loop {
    function forLoop() public {
        for (uint256 i = 0; i < 10; i++) {
            if (i == 0) {
                continue;
            }
            if (i == 8) {
                break;
            }
        }
    }

    function whileLoop() public {
        uint256 j;
        while (j < 10) {
            j++;
        }
    }
}
