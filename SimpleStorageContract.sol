//pragmas is the version controller that defines the version for the code to deploy
pragma solidity ^0.4.26;

library SafeMath {
    
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }
    
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;

        return c;
    }
    
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }
    
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        uint256 c = a / b;

        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "SafeMath: modulo by zero");
        return a % b;
    }
}

//SimpleStorage - contract name
contract SimpleStorageContract {   
    using SafeMath for uint256;
    
    //storedData - declared variable with data type
    uint storedData;  
    
    //Events- logs
    event SetData(uint value);  
    event ChangeData(uint incrementedValue, uint decrementedValue);
    
    //modifier additional function to check the conditions
    modifier checkForZero(uint newValue) {
      
      //require is the conditional statement
      require(newValue > 0);
      _;
    }
    
    //function to write the data to the variable storedData
    // public is the visiblity that defines the function is publicly readable
    function set(uint newValue) public {
        
        storedData = newValue;
        
        //Event should be used by the prefix emit followed by the event declaration
        emit SetData(newValue); 
    }
    
    //function to read the data from the variable storedData 
    // view is nothing but defining constant value
    function get() public view returns (uint) {  
        return storedData;
    }
    
    //function to increment the value of the variable storedData
    function increment(uint newValue) public checkForZero(newValue) {  
        
        //add is the safe math library function to avoid overflows
        storedData = storedData.add(newValue);  
        
        emit ChangeData(newValue , 0);
    }
    
    //function to deccrement the value of the variable storedData
    function decrement(uint newValue) public checkForZero(newValue) {  
        
        //require is the conditional statement
        require(newValue <= storedData);
        storedData = storedData.sub(newValue);  
        emit ChangeData(0 , newValue);
    }
}
