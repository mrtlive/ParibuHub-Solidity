// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public {
        todos.push(Todo(_text, false));
    }

    function update(uint _index,string calldata _text) public {
        todos[_index].text = _text;
    }

    function toggle(uint _index) public{
        todos[_index].completed = !todos[_index].completed;
    }
}
