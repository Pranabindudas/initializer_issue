Initializer Protection Vulnerability — Foundry PoC

This repository demonstrates the security difference between using OpenZeppelin's initializer modifier and having no initialization protection in upgradeable contracts.

It includes two minimal smart contracts, their tests, and reproducible Foundry PoCs:

WithoutInitializer.sol — vulnerable

WithInitializer.sol — properly protected

The purpose of this repo is educational security research showing why initializer protection is critical in upgradeable proxy contracts.

📌 Overview

In upgradeable contracts, constructors do not run.
So initialization must be done manually using an init() function.

If this initializer is not protected, anyone can:

call init() multiple times

override the contract owner

modify critical state variables

take control of the contract

This is a common vulnerability in upgradeable smart contract systems.

This repo shows exactly how it happens and how OpenZeppelin prevents it.