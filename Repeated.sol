pragma solidity ^0.4.19;

contract Repeater {
  
  function concat(string _base, string _value) internal pure returns (string) {
            bytes memory _baseBytes = bytes(_base);
            bytes memory _valueBytes = bytes(_value);
    
            bytes memory _newValue = bytes(new string(_baseBytes.length + _valueBytes.length));
        
            uint i;
            uint j;
    
            for(i=0; i<_baseBytes.length; i++) {
                _newValue[j++] = _baseBytes[i];
            }
    
            for(i=0; i<_valueBytes.length; i++) {
                _newValue[j++] = _valueBytes[i];
            }
    
            return string(_newValue);
    }
  
  function multiply(uint8 repeat, string pattern) public pure returns (string) {
            
            string memory _repeated;        
        
            for (uint8 i = 0; i < repeat; i++) {
              _repeated = concat(_repeated, pattern);
              }
            
            return _repeated;
  }
}