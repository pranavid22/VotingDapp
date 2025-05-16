// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    string[] public candidates = ["Alice", "Bob", "Charlie"];
    mapping(uint => uint) public votes;
    mapping(address => bool) public hasVoted;

    function vote(uint candidateIndex) public {
        require(!hasVoted[msg.sender], "You have already voted.");
        require(candidateIndex < candidates.length, "Invalid candidate index.");

        votes[candidateIndex]++;
        hasVoted[msg.sender] = true;
    }

    function getVotes(uint candidateIndex) public view returns (uint) {
        return votes[candidateIndex];
    }

    function getCandidates() public view returns (string[] memory) {
        return candidates;
    }
}
