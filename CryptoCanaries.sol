// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/*
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&YYY&@@@&YYY&@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&GYYYY&@&PYYY5&@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@GGY7???J5BB@@@@@@@@@@@@@@@@@@@@@@@@@@PPPYYY5#YY5YYY5@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@GJ7777?????JJ5B@@@@@@@@@@@@@@@@@@@@@@@PYY5MIHAVERSEYJJP@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@P7?JJYJ?JYJJJJJJ5#@@@@@@@@@@@@@@@@@@@@GJJJB@B???!~B@B?JJG@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@&57~7JYYYY?YYYYJJJYY5#@@@@@@@@@@@@@@@@@@B??7P@@@G555G@@@57??B@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@P?7?7?YYJJJ?7?YYJJYYYP#@@@@@@@@@@@@@@@@#7!!J@@@@@@Y@@@@@@J!!7#@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@&#5YYJJJ?7??JYJJYY5YP@@@@@@@@@@@@@@@&?!!?&@@@@@@@@@@@@@&7!!?@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#PYJJJJJYYYJYYY555P@@@@@@@@@@@@@@@#P5PB&@@@@@@@@@@@&BP5P#@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&PYYYYYJJYYYY5555#@@@@@@@@@@@@@@@@BP5PB&@@@@@@@&BP5P#@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@BJJJJJJJYYY555555#@@@@@@@@@@@@@@@@&BP55G&@@@&G55PB@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B5???JJYYYY5YJYYY55#@@@@@@@@@@@@@@@@@&G5Y5B&G5Y5B&@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Y7????JYYYY??7?JYY55G&@@@@@@@@@@@@@@@@@&GYY5YYG&@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Y7????JYYY?7?JJYYYY55P&@@@@@@@@@@@@@@@@@@#PYP#@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@57????JYYY?7?JJYY555555&@@@@@@@@@@@@@@@@@@@I@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@5?????JYYYJ??JYYY5555555&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B5J??JJYYYYYYYYY555555555#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@BJJJJJYYY5555Y555YYY55555B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B5JJJJYYY5555555555555Y55G&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#YYYYYYYY5555555Y55Y5YY55G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&5YYYYY5555555YYY5555YY??G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@&BG#@@@@@&5YY5555555555YYY5YYY?!~!G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@&&#G55P#@@@@&G55555555555J??J?777!!!!G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@&##BG55P#@@@@&BP5555555555J?7777!~^~!P@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@&&&@@#BGP5YPBBBBBP55555YJY5P5J?7!!!~^^~5@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@5B@@@@@G555?5GPG#&#&#GY?YY555P5J?7!~~~^^J@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@&~~JB@@@@BPGG5PPPPGBG##PYG&&&#G55P5Y?7~^^^^7@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@&P~.~JPG&@@@&&&GBBGGPPP5Y5#@@@@@@#G5555Y?7~^^~7&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@&Y  .~J55P&@@@@@@@&&#GY5PJJGB@@@@@@@##BPP5YJ7!^:7G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@?   .!Y5555&@@@@@@@@@&BGG5YPP#&@@@@@@@@@@BP5YYJ!~~7G@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@7.:!!YJ?JYY55#@@@@@@@@@@@#BBBG5G#&@@@@@@@@@@#P5P555Y5#@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@BYJY555J?777??5#@@@@@@@@@@@@@&#GPGGB&@@@@@@@@@B55555P55P#@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@&PBB##PP5J??YY#GBBB@@@@@@@@@@@@@@&BGGGPB@@@@@@@@#P555555555PB@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@B?J5P&#5P##PPYP&@@@@@@@@@@@@@@@@&BGBGG&@@@@@@@@#5P555555555PB&@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@BJ77?PPGPJJJP&@@@@@@@@@@@@@@@@@@&#BB#@@@@@@@@@&B555555555555PB&@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@G777?JJJY&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&55555P555555555B&@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@BY7?JYG&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&GP55555555555555G@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@Y?JB@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&#BPP5555555PPB&@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@B&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#######@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

import "erc721a/contracts/ERC721A.sol";
import "@openzeppelin/contracts/interfaces/IERC2981.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @title CryptoCanaries Contract
/// @author MIHA

contract CryptoCanaries is 
     ERC721A, 
     IERC2981,
     Ownable, 
     ReentrancyGuard 
{

  using Strings for uint256;

  bytes32 public merkleRoot = 0xe144e75eba1174dff3ca208fdc126ad2494ab76bf0d276074be28ed1e0a210c2;
  mapping(address => bool) public addressClaimed; /// @notice An address can mint only once
  address public royaltyAddress;

  string public provenance = "59c76c4fc217ac63a3b0dc76a8ad9766b514a85cd6555d00acfdb100a12ef70d"; // sha256
  string public uriPrefix = '';
  string public uriSuffix = '.json';
  string public hiddenMetadataUri = "ar://QfEQLDH3YHK9pjsv3VluFnAxZQ5qEsZAN8HGyDccdm4";
  
  uint256 public cost = 0 ether;
  uint256 public maxSupply = 112; /// @notice +1 to save on gas cost of <= vs <
  uint256 public royalty = 100; /// @notice Must be a whole number 3.3% is 33

  bool public paused = false;
  bool public revealed = false;

  constructor() 
  ERC721A("CryptoCanaries", "CANARY") {
    royaltyAddress = msg.sender;
    _safeMint(msg.sender, 7);
  }

/// @dev === MODIFIER ===
  modifier mintCompliance() {
    require(totalSupply() + 1 < maxSupply, 'SOLD OUT!');
    require(!addressClaimed[_msgSender()], 'Address already claimed!');
    require(!paused, 'Sale is paused!');
    require(msg.value >= cost);
    _;
  }

/// @dev === Minting Function - Input ====
  function mint(bytes32[] calldata _merkleProof) public payable 
  mintCompliance() 
  nonReentrant
  {
    /// @notice Verify whitelist
    bytes32 leaf = keccak256(abi.encodePacked(_msgSender()));
    require(MerkleProof.verify(_merkleProof, merkleRoot, leaf), 'Invalid signature!');

    addressClaimed[_msgSender()] = true;
    _safeMint(_msgSender(), 1);
  }

/// @dev === Override ERC721A ===
  function _startTokenId() internal view virtual override returns (uint256) {
      return 1;
    }

/// @dev === PUBLIC READ-ONLY ===
  function walletOfOwner(address _owner) public view returns (uint256[] memory) {
    uint256 ownerTokenCount = balanceOf(_owner);
    uint256[] memory ownedTokenIds = new uint256[](ownerTokenCount);
    uint256 currentTokenId = _startTokenId();
    uint256 ownedTokenIndex = 0;
    address latestOwnerAddress;

    while (ownedTokenIndex < ownerTokenCount && currentTokenId < maxSupply) {
      TokenOwnership memory ownership = _ownerships[currentTokenId];

      if (!ownership.burned && ownership.addr != address(0)) {
        latestOwnerAddress = ownership.addr;
      }

      if (latestOwnerAddress == _owner) {
        ownedTokenIds[ownedTokenIndex] = currentTokenId;

        ownedTokenIndex++;
      }

      currentTokenId++;
    }

    return ownedTokenIds;
  }

  function tokenURI(uint256 _tokenId) public view virtual override returns (string memory) {
    require(_exists(_tokenId), 'Nonexistent token!');

    if (revealed == false) {
      return hiddenMetadataUri;
    }

    string memory currentBaseURI = _baseURI();
    return bytes(currentBaseURI).length > 0
        ? string(abi.encodePacked(currentBaseURI, _tokenId.toString(), uriSuffix))
        : '';
  }

/// @dev === Owner Control/Configuration Functions ===

  function setRevealed(bool _state) public onlyOwner {
    revealed = _state;
  }

  function setUriPrefix(string memory _uriPrefix) public onlyOwner {
    uriPrefix = _uriPrefix;
  }

  function setUriSuffix(string memory _uriSuffix) public onlyOwner {
    uriSuffix = _uriSuffix;
  }

  function setMerkleRoot(bytes32 _merkleRoot) public onlyOwner {
    merkleRoot = _merkleRoot;
  }

  function pause(bool _state) public onlyOwner {
    paused = _state;
  }

  function setRoyaltyAddress(address _royaltyAddress) public onlyOwner {
    royaltyAddress = _royaltyAddress;
  }

  function setRoyaly(uint256 _royalty) external onlyOwner {
        royalty = _royalty;
  }

/// @dev === INTERNAL READ-ONLY ===
  function _baseURI() internal view virtual override returns (string memory) {
    return uriPrefix;
  }

/// @dev === Withdraw ====
  function withdraw() public onlyOwner nonReentrant {
    (bool os, ) = payable(owner()).call{value: address(this).balance}('');
    require(os);
  }

//IERC2981 Royalty Standard
    function royaltyInfo(uint256 tokenId, uint256 salePrice)
        external view override returns (address receiver, uint256 royaltyAmount)
    {
        require(_exists(tokenId), "Nonexistent token");
        return (royaltyAddress, (salePrice * royalty) / 1000);
    }                                                

/// @dev === Support Functions ==
    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721A, IERC165) returns (bool) {
        return
            interfaceId == type(IERC2981).interfaceId ||
            super.supportsInterface(interfaceId);
    }
}