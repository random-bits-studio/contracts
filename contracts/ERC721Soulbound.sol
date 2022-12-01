// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

abstract contract ERC721Soulbound is ERC721 {
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId,
        uint256 batchSize
    ) internal virtual override {
        require(from == address(0) || to == address(0), "ERC721Soulbound: token is non-transferable");
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }
}
