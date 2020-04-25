pragma solidity >=0.6.0;

contract StarNotary {
    
    string public starName;
    address public starOwner;
     
    event starClaimed(address owner);

    constructor() public {
        starName = "Awesome Neels Star";
    }

    function claimStar() public {
        starOwner = msg.sender;
        emit starClaimed(msg.sender);
    }
}