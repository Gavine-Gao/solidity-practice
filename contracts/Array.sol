// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Array {
    uint256[] public arr;

    uint256[] public arr2 = [1, 2, 3];

    function push(uint256 x) public {
        arr.push(x);
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 x) public {
        uint256[] memory a = new uint256[](5);
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[x];
    }

    function pop() public {
        arr2.pop();
    }
}
