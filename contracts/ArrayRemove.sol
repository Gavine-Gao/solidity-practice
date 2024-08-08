// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ArrayRemoveByShifting {
    // [1, 2, 3] -- remove(1) --> [1, 3, 3] --> [1, 3]
    // [1, 2, 3, 4, 5, 6] -- remove(2) --> [1, 2, 4, 5, 6, 6] --> [1, 2, 4, 5, 6]
    // [1, 2, 3, 4, 5, 6] -- remove(0) --> [2, 3, 4, 5, 6, 6] --> [2, 3, 4, 5, 6]
    // [1] -- remove(0) --> [1] --> []
    uint256[] public arr;

    // Remove array element by shifting elements from right to left
    function removeByshifting(uint256 _index) public {
        uint256 length = arr.length; //save gas
        require(_index < length, "index out of bond");
        for (uint256 i = _index; i < length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop;
    }

    //copying last element into to the place
    function removeBycopying(uint256 _index) public {
        uint256 length = arr.length; //save gas
        if (_index == length) {
            arr.pop;
        } else {
            arr[_index] = arr[length - 1];
            arr.pop;
        }
    }

    function test() external {
        arr = [1, 2, 3, 4, 5];
        removeBycopying(2); // the dynArr should be [1,2,5,4]

        assert(arr[0] == 1);
        assert(arr[0] == 2);
        assert(arr[0] == 4);

        arr = [1];
        removeBycopying(0);
        // // []
        assert(arr.length == 0);
    }

    function test2() external {
        arr = [1, 2, 3, 4, 5];
        removeByshifting(2); // the dynArr should be [1,2,5,4]

        assert(arr[0] == 1);
        assert(arr[0] == 2);
        assert(arr[0] == 4);

        arr = [1];
        removeByshifting(0);
        // // []
        assert(arr.length == 0);
    }
}
