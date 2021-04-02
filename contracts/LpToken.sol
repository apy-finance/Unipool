pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LpToken is ERC20("Mock LP Token", "MOCK"), Ownable {
    function mint(address account, uint256 amount) {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) {
        _burn(account, amount);
    }
}
