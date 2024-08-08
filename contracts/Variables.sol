// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Variables {
    string public text = "State variables are stored on the blockchain.";
    uint256 public num = 234;
    address addr;

    function doSomething() public pure returns (uint256) {
        // Local variables are not saved to the blockchain.
        uint256 i = 126;
        return i;
    }

    function getLocalVal()
        public
        pure
        returns (
            string memory,
            uint256,
            address,
            int
        )
    {
        string memory s = "this is local Variable string";
        uint256 i = 128;
        address addr = 0x96F23019BdF9785c9a3f20AeEE86A3F15819a312;
        int a = 10;
        return (s, i, addr, a);
    }

    function getStateValue() public view returns (string memory) {
        return text;
    }

    function setStateValue(
        address _addr,
        uint256 _a,
        int _c,
        bytes1 _b
    ) public {
        addr = _addr;
        uint256 a = _a;
        int c = _c;
        bytes1 d = _b;
    }
}
