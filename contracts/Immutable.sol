// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Immutable {
    address public immutable ADDRESS;

    constructor() {
        ADDRESS = msg.sender;
    }
}
