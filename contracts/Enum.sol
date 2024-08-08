// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Enum {
    enum Status {
        Pending, //0
        Shipped, //1
        Accepted, //2
        Rejected, //3
        Canceled //4
    }
    // defult is 0
    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    //_status is int value
    function set(Status _status) public {
        status = _status;
    }

    function reset() public {
        delete status;
    }
}
