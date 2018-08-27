<p align="center">
  <h1> Hack Butterfly </h1>
  <br>
  <img alt="hackButterfly" title="hackButterfly" src="public/images/intro.png" width="auto">
</p>

## Table of Contents

- [TL;DR](#tl;dr)
- [Introduction](#introduction)
- [Features](#features)
- [Setup](#setup)
- [Feedback](#feedback)


## TL:DR

Welcome to my very first dApp tutorial! Please find the [presentation here](https://google.com//), which is build specifically around this repo. The presentation was held in person, so the 'live-coding' section won't be included for obvious reasons.

### Prerequisites

* Installed [Metamask as a chrome plugin](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=en), hooked up an account, and have some [Ropsten test money](https://faucet.metamask.io/) in it.
* Be somewhat familiar with the idea behind Ethereum, Smart Contracts, and dApps
* Have a basic understanding of programming
* Ideally have an understanding of Vue.js

## Introduction

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

The Ethereum blockchain is a paradigm shift in transparency, trust, and true ownership. Inspired by the thoughts about a [transparency standard](https://www.forbes.com/sites/paulmartyn/2018/03/28/does-blockchain-provide-the-new-standard-for-transparency/#bb46c663921e) that could be achieved through blockchain, I thought about how to achieve that on a small scale. Imagine a world where every university offers a transparent, always up to date, and immutable list of students and graduates. Instead of background-checking if a student really went to Stanford, one can simply call a function on a smart contract to receive the answer. 100% free and always accurat. 

The online coding school [Hack Butterfly](https://hackbutterfly.herokuapp.com/) is an MVP to model such an idea using [Ethereum](https://www.ethereum.org/), [Solidity](https://solidity.readthedocs.io/en/v0.4.24/), [web3](https://github.com/ethereum/web3.js/), and [Vue](https://vuejs.org/).

This project and presentation were both created during my time as a student at [Code Chrysalis](https://www.codechrysalis.io/) in Tokyo. (Yes. Hack Butterfly is a pun, glad you caught it.)

[You can check out the demo here!](https://hackbutterfly.herokuapp.com/) || [Here's a link to the presentation again](https://google.com/) || Medium post with written turorial will follow

## Features

These are the features of the current version:

* Sign up as a student through the Ropsten test network for just 5ETH!
* Get a list of current students and alumni
* OnlyOwner: Graduate student
* OnlyOwner: Set program cost

Here's some useful information to get know before getting started with the codebase 

* The Smart Contract is deployed on the Ethereum Ropsten Test Network
* Owner: 0x4B8dc8d5A7d51c2FFE2A3C1f08DbFC884265967E
* Smart Contract, its address, and the ABI are all in public/src/utils

## Setup

* You find the smart contract's codebase in public/src/utils/. I did deploy the smart contract through [Remix](https://remix.ethereum.org/), Ethereum's IDE. I've solely put the smart contract for completeness into this repo. I did not deploy it locally from my machine.

* Once you've deployed your own iteration of the smart contract (if you chose so), update abi.js and contractAddress.js accordingly. You might want to revisit some methods within the components as well after you made some changes to the functions within the smart contract. 

* If you are overwhelmed with smart contracts and Remix, [here](https://www.youtube.com/watch?v=KkN1O8TChbM) and [here](https://www.youtube.com/watch?v=KU6bvciWgRE&list=PL0lNJEnwfVVMuX2Ds19Wj_7Mcze3FDJr3) are some videos to get started.

* As mentioned, you do need the chrome plugin [Metamask](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=en) with some money in there. (make sure to be on the Ropsten Test Network)

After you cloned the project, run:
```
yarn
```
Compiles and hot-reloads for development
```
yarn run serve
```

Compiles and minifies for production
```
yarn run build
```

Start HTTP server with the build (useful for Heroku deployment)
```
yarn start
```

## Feedback

Please feel free to send me any feedback or questions via [Discord](https://discordapp.com/users/Akzent#6791) or [email](https://www.sourcecon.com/how-to-find-almost-any-github-users-email-address/).

## Keep Studying!

Here are some ressources that helped me get started, ordered by how helpful they were:

* Probably the best Solidity tutorial out there: [Crypto Zombies](https://cryptozombies.io)
* Fullstack tutorial with Vue, web3, and Solidity: [Build a Casino!](https://itnext.io/create-your-first-ethereum-dapp-with-web3-and-vue-js-c7221af1ed82)
* Introduction to the Truffle Framework: [Pet Shop](https://truffleframework.com/tutorials/pet-shop)
* YouTube: [Ethereum course for beginners](https://www.youtube.com/watch?v=KU6bvciWgRE&list=PL0lNJEnwfVVMuX2Ds19Wj_7Mcze3FDJr3)

Lastly, some interesting projects that you should know:

* [Truffle](https://truffleframework.com/)
* [Infura](https://infura.io/)
* [OpenZeppelin](https://openzeppelin.org/)
* [Consensys](https://new.consensys.net/)
* [0x](https://0xproject.com/)
* [Aragon](https://aragon.org/)



