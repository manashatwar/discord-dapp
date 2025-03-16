// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Dappcord is ERC721 {
    uint256 public totalChannels;
   address  public  owner;
   uint256 public totalSupply;

   struct Channel {
      string name;
      uint256 cost;
      uint256 id;
   }

   mapping(uint256 => Channel) public channels;
  // nested mapping
   mapping(uint256 => mapping(address => bool)) public hasJoined;
   
   modifier onlyOwner() {
      require(msg.sender == owner);
      _;
   }
   constructor(string memory _name, string memory _symbol) 
   ERC721(_name , _symbol ) {
    owner = msg.sender;
   }

   function createChannel(string memory _name, uint _cost) public onlyOwner {
   
    totalChannels++;
   channels[totalChannels] = Channel(_name, _cost, totalChannels);
 }
   
    function mint(uint256 _id) public payable {
      // Ensure the channel ID is not zero
      require(_id != 0, "Channel ID cannot be zero");
      // Ensure the channel ID is within the range of created channels
      require(_id <= totalChannels, "Channel ID does not exist");
      // Ensure the sender has sent enough Ether to cover the channel cost
      require(msg.value >= channels[_id].cost, "Not enough ether sent");
      // Ensure the sender has not already joined the channel
      require(hasJoined[_id][msg.sender] == false);
     //joined the channel
      hasJoined[_id][msg.sender] = true;
    //mint NFT
     totalSupply++;
      _safeMint(msg.sender, totalSupply);

    }

   function getChannel(uint256 _id) public view returns (Channel memory) {
      return channels[_id];
   }

    function withdraw() public onlyOwner {
        (bool success, ) = owner.call{value: address(this).balance}("");
        require(success);
    }
}