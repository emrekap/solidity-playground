// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {ERC4626, ERC20} from "solmate/mixins/ERC4626.sol";
import {SafeCast} from "openzeppelin/utils/math/SafeCast.sol";
import {Ownable} from "openzeppelin/access/Ownable.sol";

contract Foo is ERC4626, Ownable {
    using SafeCast for int256;

    ERC20 token;
    int256 public number;

    constructor(
        ERC20 asset_,
        address newOwner
    ) ERC4626(asset_, "VaultName", "vName") {
        transferOwnership(newOwner);
    }

    function totalAssets() public view override returns (uint256) {
        return number.toUint256();
    }
}
