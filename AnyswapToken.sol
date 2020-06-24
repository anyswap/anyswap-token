// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";

contract AnyswapToken is ERC20, ERC20Burnable {
    address payable public owner;
    constructor() ERC20("Anyswap", "ANY") public {
        owner = msg.sender;
        _mint(msg.sender, 1e26);
    }
    function destroy() public {
        require(msg.sender == owner, "only owner");
        selfdestruct(owner);
    }
}
