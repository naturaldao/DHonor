pragma solidity ^0.5.0;

/**
 * @title ERC721 token with name interface
 */
contract IERC721Named {
    /**
     * @dev Return the name of given tokenId
     * @param tokenId  uint256 ID of the token to query the name of
     * @return string  the name of given tokenId
     */
    function getNameByToken(uint256 tokenId) public view returns(string memory);
}
