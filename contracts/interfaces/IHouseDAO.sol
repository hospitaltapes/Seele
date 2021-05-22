// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IHouseDAO {
	struct Role {
		bool headOfHouse;
		bool member;
	}

    struct Member {
        uint256 shares; // the # of voting shares assigned to this member
        Role roles;
    }

    struct Proposal {
    	uint256 fundsRequested;
    	uint8 proposalType; // 0 = funding proposal // 1 = commission art etc
        Role role; // role change proposed
        uint256 yesVotes; // the total number of YES votes for this proposal
        uint256 noVotes; // the total number of NO votes for this proposal
        mapping(address => bool) votesByMember; // the votes on this proposal by each member        
        bool executed;
        uint deadline;
        address proposer;
    }
}