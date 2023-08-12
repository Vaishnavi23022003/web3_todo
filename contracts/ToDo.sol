pragma solidity ^0.5.0; // the version of solidity we want to use

contract ToDo {
    uint256 public taskCount = 0; //state variable -> written to the blockchain, define the state of the contract on the chain
    // public -> we will be able to acess the var from the contract using reader function provided by solidity

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    mapping(uint256 => Task) public tasks;

    event TaskCreated(uint256 id, string content, bool completed); 
    // solidity allows us to create events that are triggred when sth happens inside a smart contract

    constructor() public {
        //called whenever the smart contract is called for the first time i.e. on deployment

        createTask("YO yo yo yo yo hey!!! 😎");
    }

    function createTask(string memory _content) public {
        // what is this memory keyword? https://www.educative.io/answers/storage-vs-memory-in-solidity

        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
        //this will trigger the TaskCreated event 
    }
}
