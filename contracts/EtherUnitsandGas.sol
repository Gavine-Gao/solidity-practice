// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract EtherUnit {
    uint256 public oneWei = 1 wei;
    bool public isonewei = (oneWei == 1);

    uint256 public oneGWei = 1 gwei;
    bool public isOneGwei = (oneGWei == 1e9);

    uint256 public oneEher = 1 ether;
    bool public isoneEher = (oneEher == 1e18);

    uint256 public i = 0;

    // Using up all of the gas that you send causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.
    function forever() public {
        // Here we run a loop until all of the gas are spent
        // and the transaction fails
        while (true) {
            i += 1;
        }
    }
}
