// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LpToken is ERC20 {
    string private _name;
    string private _symbol;

    constructor(string memory name_, string memory symbol_) public {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5,05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view returns (uint8) {
        return 18;
    }

    /// @dev Expose mint, since this contract is for dev testing
    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }

    /// @dev Expose burn, since this contract is for dev testing
    function burn(address account, uint256 amount) external {
        _burn(account, amount);
    }
}
