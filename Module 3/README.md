# Error Handling in Transaction of Tokens

This Solidity smart contract, named `MyToken`, implements a simple token system with features for minting, burning, and transferring tokens. It showcases error-handling mechanisms using `require`, `assert`, and `revert` statements.

## Description

The `MyToken` contract is designed to demonstrate the fundamentals of a token system while implementing robust error handling. The contract includes functionality for minting new tokens, burning tokens, and transferring tokens between users. It also makes use of Solidity's error-handling mechanisms (`require`, `assert`, and `revert`) to ensure safe and reliable transactions. The contract supports ownership control, allowing only the owner to mint and burn tokens, and implements custom error messages for clear debugging.

## Getting Started

### Installing

To interact with this smart contract, you will need the following:
* **Remix IDE** or another Solidity development environment.
* A connection to the Ethereum blockchain, either through a local blockchain like **Ganache** or a testnet (e.g., Ropsten, Rinkeby).
* A wallet with some test Ether (e.g., **MetaMask**).

**Steps:**
1. Download or clone the project files into your local environment.
2. Open the Remix IDE at [https://remix.ethereum.org/](https://remix.ethereum.org/).
3. Load the `MyToken` Solidity file in Remix.

### Executing program

To deploy and run the contract, follow these steps:
1. Open Remix IDE and create a new file with the Solidity code provided.
2. Compile the code using the Solidity compiler (version 0.8.27).
3. Deploy the contract to a local or test blockchain.

```
# Compile and deploy using Remix IDE
# 1. Open the file in Remix
# 2. Select the Solidity compiler (0.8.27)
# 3. Compile the code
# 4. Deploy the contract using a suitable environment (e.g., Injected Web3 for MetaMask)
```

4. After deploying, you can interact with the following contract functions:
- Mint tokens: Allows the owner to mint new tokens to a specified address.
- Burn tokens: Allows the owner to burn tokens from a specified address.
- Transfer tokens: Allows token transfers between addresses.

### Help
Common issues might include:

- Error: Account balance must be greater than transferred value - Ensure that the sender's balance is greater than or equal to the amount they are trying to transfer.
- Error: NoEnoughBalance - The address does not have enough tokens to burn.

```
# No specific help command as this is a smart contract
# Troubleshoot errors using Remix's built-in debugging tools
```

## Authors
Jericho L. Menguito

202110360@fit.edu.ph

## License
This project is licensed under the MIT License - see the LICENSE.md file for details

