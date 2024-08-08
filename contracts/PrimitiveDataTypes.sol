// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Primitives {
    // =============boolean types=================
    bool public isOk = false;
    // =============boolean types=================

    // =============unit types=================
    // the min value is 0 the max value is 2^8-1
    uint8 public u8 = 255;
    // the min value is 0 the max value is 2^256-1
    uint256 public u256 = 456;
    uint256 public u = 133; //uint is an alia for uint256
    uint256 public maxu128 = type(uint256).max;
    uint128 public min1u28 = type(uint128).min;
    // =============unit types=================

    // =============int types=================
    //the min value is -2^7 and the max vluae is 2^7-1
    int8 public i8 = -20;
    //min
    int8 public minInt8 = type(int8).min;
    int8 public maxInt8 = type(int8).max;
    //the min value is -2^255 and the max vluae is 2^255-1
    int256 public i256 = -1;
    int256 public minInt256 = type(int256).min;
    int256 public maxInt256 = type(int256).max;
    //the min value is -2^127 and the max vluae is 2^127-1
    int128 public i128 = -1;
    int128 public max128 = type(int128).max;
    int128 public min128 = type(int128).min;
    // =============int types=================

    // ==============start address types===============
    address public addr = 0x96F23019BdF9785c9a3f20AeEE86A3F15819a312; //if you don't assign values while initiation then these  would be a default value like below the deflut value is 0x0000000000000000000000000000000000000000
    address payable addr1 = payable(0x96F23019BdF9785c9a3f20AeEE86A3F15819a312);

    function someConversion() public {
        // payable types can implicit convert to the normal address typs whereas the don't have payable keyword types need to use payable(address)
        // like below would cause error
        //  addr2 = addr;
    }

    // ==============end address types===============

    // ==============start bytes  types===============
    // there are two types about bytes types; one is fixed-sized bytes arrays  the other are dynamic-sized bytes arrays
    bytes1 someByte = 0x3c;
    bytes1 b = 0x56; //[01010110]
    // ==============end bytes  types===============

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
