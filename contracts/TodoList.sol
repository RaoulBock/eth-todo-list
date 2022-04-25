pragma solidity ^0.5.0;

contract TodoList {
    uint256 public taskCount = 0;

    struct Task {
        uint256 id; //Unsigned int that can not be negative
        string content;
        bool completed;
    }

    //Place them in storage in the blockChain
    mapping(uint256 => Task) public tasks;

    constructor() public {
        // This is going to be a function that is going to be called when run for the first time
        //Adding a default task
        createTask("Check out dappunivisity.com");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
