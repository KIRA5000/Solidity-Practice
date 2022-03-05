# Solidity-Practice

 - This directory is created to learn Solidity.
 - It contains all the code that I would practice to master solidity.
 - Everything was praticed in Remix.

 ## Info

 ### BlockChain Info
 - Satoshi Nakamote, published a Bitcoin Whitepaper in 2008, which worked a a foundation of our current bitcoin.
 - Titled: Bitcoin: A Peer-to-Peer Electronic Cash System
 - This paper described a way of exchanging a currency, Bitcoin, that combines cryptography, computer science, and game theory in its design and implementation.
 - The point was to remove control from a single authority and storing information into a pear-to-pear network, where every change is recorded and is transperent to everyone.
 - Making it pear-to-pear came few advantages too. 
 - It was very unlikely for system to go down, as system was comprised of multiple nodes in network.
 - It was very difficult to hack. As everone who is in the network has the copy of blockchain.
 - Each block in a blockchain mostly contains 3 information: Relevent Data, Hash, Hash of previous block.
 - First Block of chain whose previous hash is 0, is called genesis block.
 - Proof of work: It slows down the rate at which blocks are created, hence making it hard to temper too.
 - In other words a blockchain is a decentralized ledger that records transactions or activity between two participants permanently with verification.
 - This verification comes in the form of reviewing cryptographic functions and timestamps. 
 - Ethereum comes into picture later to by realizing flaws with with bitcoin.
 - Ethereum blockchain gives users the ability to program interactions with other users - if you do this, I will give you this - opening up new possibilities for people from all over the world to interact with each other.
 - Ethereum interduced smarts contracts which are basically program which are stored on a block chainwhich is written by users to interact with each other. 

 ### Solidity Info
 - It is a contract-based language. That means it basically used to write smart contracts in EVM.
 - It is inspired from C++, Python and JavaScript.
 - It is a statically typed language, that means we need to speciffy data types at compile time only, unlike python
 - Each smart contract deployed in Block chain is immutable in nature.
 - View and Pure Functions are called calls as they don't change state of our contract, so Gas charge is null. 
 - Only Transactions are chargable in state.
 

## Compiler installation

This step is not needed if you plan to use remix
```
sudo add-apt-repository ppa:ethereum/ethereum
sudo add-apt-repository ppa:ethereum/ethereum-dev
sudo apt-get update
sudo apt-get install solc
```

## Build Tool

```
https://remix.ethereum.org/
```

## References

```
 - Basics of blockchain: https://www.youtube.com/watch?v=SSo_EIwHSd4
 - Coursera Introduction to BlockChain: https://www.coursera.org/learn/blockchain-foundations-and-use-cases
 - Official language documentation: https://docs.soliditylang.org/en/latest/
 - Dapp University Youtube: https://www.youtube.com/watch?v=YJ-D1RMI0T0
 - GitHub material: https://github.com/willitscale/learning-solidity
```