// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

contract Greeter {
    string private greeting;

    event GreetingSet(string greeting);

    constructor(string memory _greeting) {
        greeting = _greeting;

        emit GreetingSet(_greeting);
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        greeting = _greeting;

        emit GreetingSet(_greeting);
    }
}
