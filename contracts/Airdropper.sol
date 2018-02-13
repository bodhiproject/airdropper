pragma solidity ^0.4.18;

import './ERC20.sol';
import './Ownable.sol';

contract Airdropper is Ownable {
    function Airdropper() Ownable(msg.sender) public {
    }

    function multisend(address _tokenAddr, address[] _dests, uint256[] _values)
        onlyOwner
        public
        returns (uint256 _numTxs) 
    {
        uint256 i = 0;
        while (i < _dests.length) {
           ERC20(_tokenAddr).transfer(_dests[i], _values[i]);
           i += 1;
        }
        return(i);
    }
}
