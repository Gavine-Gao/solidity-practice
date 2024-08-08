// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Event {
    event Log(address indexed from, address indexed to, uint256 amount);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, msg.sender, 100000);
        emit AnotherLog();
    }
}
