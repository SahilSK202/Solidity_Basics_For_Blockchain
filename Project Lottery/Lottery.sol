// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract Lottery {
    address public manager; // manages lottery
    address payable[] public participants; // participants of the lottery

    constructor() {
        // to set a manager who deploys the contract
        manager = msg.sender;
    }

    // function to receive ethers and make list of participants
    receive() external payable {
        require(msg.value == 2 ether);
        participants.push(payable(msg.sender));
    }

    // function to get balance
    function getBalance() public view returns (uint256) {
        require(msg.sender == manager);
        return address(this).balance;
    }

    // function to generate random uint256
    function random() public view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.difficulty,
                        block.timestamp,
                        participants.length
                    )
                )
            );
    }

    // function to randomly select a winner and resetting the lottery.
    function selectWinner() public {
        require(msg.sender == manager);
        require(participants.length >= 3);
        address payable winner;
        uint256 index = random() % participants.length;
        winner = participants[index];
        winner.transfer(getBalance());
        participants = new address payable[](0);
    }
}
