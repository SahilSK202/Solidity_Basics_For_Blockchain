# Decentralized Lottery Application

## Introduction

A Decentralized Lottery Application where manager will have all the rights to rules of the lottery.

## Description

There will be two Roles :

### 1. Manager :

- Manage the lottery
- Activate lottery
- Select random winner
- Distribution of prize amount to the winner.
- Resetting the lottery

### 2. Participants :

- Participate in lottery
- Buy multiple lotteries of fixed amount

## Algorithm followed is :

1. Participants will send fixed amount ethers to address of contract.
2. After sending ethers, users will become participants of the lottery.
3. Minimum participants count requirement is 3 for the lottery.
4. Randomly winner will be selected from the participants.
5. Balance from the contract will be transferred to the winner.

## Points to note :

- Participant must have a wallet.
- A participant can transfer ether more than one time but the transferred ether must be fixed , say x ether.
- As the participant will transfer ether, its address will be registered.
- Manager will have full control over the lottery.
- The contract will be reset once a round is completed.

## IDE used :

https://remix.ethereum.org/

## Resources Used:

- **Youtube Video by Code Eater** <br>
  https://youtu.be/aFI_XPll_mg
