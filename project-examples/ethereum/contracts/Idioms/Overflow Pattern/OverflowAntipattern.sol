pragma solidity 0.7.0;

contract OverflowAntipattern {
    uint256 counter = 0;
    
    event Overflow(uint256 iteration_counter);
    
    function runLoop() public {
       for (uint8 i=0; i < 258 ; i+1){
           counter += 1; 
           // The following condition will never validate true
           if (counter==260){
               break;
           }
       }
        
       emit Overflow (counter);
    }
}