// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Mapping {
    mapping(address => uint) public maps;

    function get(address _addr) public view returns (uint256) {
        return maps[_addr];
    }

    function set(address _addr, uint256 _i) public {
        maps[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete maps[_addr];
    }

    mapping(address => mapping(uint => bool)) public nested;

    function setNestMaaping(
        address _addr,
        uint _nestKey,
        bool _boolVal
    ) public {
        nested[_addr][_nestKey] = _boolVal;
    }

    function getNestMappingValue(address _addr, uint _nestKey)
        public
        view
        returns (bool)
    {
        return nested[_addr][_nestKey];
    }

    function removeNestMapping(address _addr, uint _nestKey) public {
        delete nested[_addr][_nestKey];
    }
}
