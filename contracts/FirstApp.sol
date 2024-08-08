// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter {
    uint256 public count;

    function getCount() public view returns (uint256) {
        return count;
    }

    function inc() public {
        count += 1;
    }

    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }

    function setCount(uint256 num) public {
        count = num;
    }
}
