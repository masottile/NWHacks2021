pragma solidity 0.5.1; 
// can declare the version (bad security in practice as someone else with a higher version could do something

contract Counter {
    // All contract source code goes here
    uint public count; 
    // Solidity is statically typed and this is how we declare variables
    // by default uint is 256 bit
    // this is a state variable. It will be stored on the blockchain and updated (like a database)

    event Increment(uint value);
    event Decrement(uint value);
    // anyone on the blockchain could subscribe to this event and know when this count increases
    // and could find the history of this on the blockchain

    // called when contract is created/initialized
    // could also set the default value when we declare the variable
    constructor() public {
        count = 0;
    }

    // create a way to set this value
    function increment() public {
        count += 1;

        emit Increment(count);
        
    }

    function decrement() public {
        count -= 1;
        emit Decrement(count);
    }

    function getCount() view public returns(uint) {
        return count;
    }

    // the public key means that these functions can be called from outside the smart contract

}