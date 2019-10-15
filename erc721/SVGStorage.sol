pragma solidity ^0.5.0;

contract SVGStorage {

    address public owner;
    string private svg_storage;

    event OwnerTransfer(address indexed from, address indexed to);
    event SetSvgSuc();

    constructor () public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "SVGStorage: caller does not have the owner role");
        _;
    }

    function transferOwner(address new_owner) public onlyOwner {
        require(new_owner != address(0), "SVGStorage: new_owner is a zero address");
        emit OwnerTransfer(owner,new_owner);
        owner = new_owner;
    }

    function getSvg() public view returns(string memory){
        return svg_storage;
    }

    function setSvg(string memory svg_code) public onlyOwner {
        svg_storage = svg_code;
        emit SetSvgSuc();
    }

}
