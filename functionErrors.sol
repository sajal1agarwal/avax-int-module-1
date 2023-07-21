// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract FunctionError 
    {

        address  payable public owner ;
        uint public i ; 
        constructor () {
        owner = payable(msg.sender);
        }
    
        function _Require(uint _i) public  {
                require(msg.sender == owner,"not the owner of the contract from require"); 
                        i = _i ;
        } 
        function _revert() public  view {
            if(msg.sender != owner ) { 
                revert ("not the owner of the contract from the revert");
            }
        }


        error NotOwner(address payable _address, string  str); 
        function _revertCustom() public view {
              if(payable(msg.sender) != owner) 
              {
                revert NotOwner({_address: payable(msg.sender), str : "not the owner address"});
              }
        }
    
        function _assert(uint _i) public payable   {
            assert(payable(msg.sender) == owner);
              i = _i *2 ;

        }

    }
