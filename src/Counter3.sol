// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Counter3 {
    using SafeMath for uint256;

    function addition(
        uint256 a,
        uint256 b
    ) public payable returns (bool, uint256) {
        return a.tryAdd(b);
    }

    function multiply(
        uint256 a,
        uint256 b
    ) public payable returns (bool, uint256) {
        return SafeMath.tryMul(a, b);
    }
}
