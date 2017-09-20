pragma solidity ^0.4.0;


contract Core {
  address public owner = msg.sender;

  mapping (address => bool) permissions;

  modifier onlyOwner {
    if (msg.sender == owner)
    _;
  }

  modifier onlyApprovedProjects{
    assert(permission[msg.sender]);
    _;
  }

  function setPermissions(address projectAddres) onlyOwner {
    permissions[projectAddress] = true;
  }

  function checkPermissions(addres requesterAddres) returns(bool) {
    return(permissions[requesterAddres]);
  }

  function getKey(address profileAddress) onlyApprovedProjects returns(address){
    address key;
    key = (address(sha3(block.blockhash(block.number-1))));
    return (key);
  }

}

