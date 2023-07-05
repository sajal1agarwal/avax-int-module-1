// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionErrors {
    uint private value;

    function setValue(uint _newValue) public {
        require(_newValue > 0, "New value must be greater than zero");
        value = _newValue;
    }
    function divide(uint _divisor) public pure returns (uint) {
        assert(_divisor != 0);
        return 10 / _divisor;
    }
    function checkEven(uint _number) public pure {
        if(_number %2 != 0) 
        revert("Number must be even");
        
    }  
    function getValue() public view returns (uint) {
        return value;
    }
}
