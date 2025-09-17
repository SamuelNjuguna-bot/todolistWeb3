// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.0;

contract todoList {

uint public taskCount = 0;

struct Task {
    uint id;
    string content;
    bool completed;
}


mapping (uint => Task) public tasks;

constructor () public{
    createTask("I love coding  web3 ...");
}

function createTask(string memory _content) public{
    taskCount ++ ;
    tasks[taskCount] = Task(taskCount, _content, false);
}


}