# My Simple Token

A simple Solidity smart contract that implements a basic cryptocurrency token with minting and burning functionality.

## Description

MyToken is a smart contract built on the Ethereum blockchain using Solidity. The contract provides functionality to manage a token with a name, symbol, and total supply. It allows for minting new tokens to an address and burning tokens from an address, while ensuring that token balances are managed securely. The purpose of this token is to provide a foundational example of creating and managing a custom token on a blockchain.

## Getting Started

### Installing
To use or interact with this contract, you'll need to have the following installed:

- Solidity Compiler: This code is written in Solidity version 0.8.27, so ensure your environment supports this version.
- Ethereum Development Environment: Use tools like Remix IDE or local development frameworks like Hardhat or Truffle.
- MetaMask or other Ethereum wallet: To interact with the contract on the Ethereum testnet or mainnet.

### Executing program
To deploy and interact with the contract:

- Open Remix IDE or your preferred Ethereum development environment.
- Create a new file and paste the contract code into it.
- Compile the contract using Solidity version 0.8.27.
- Deploy the contract to a local blockchain (like Ganache) or to the Ethereum testnet.
- Use the following commands in the deployed contract's interface to interact with it:
```
// To mint new tokens to an address
mint("address_here", amount_here);

// To burn tokens from an address
burn("address_here", amount_here);

```

## Help
For common issues and troubleshooting:

- Ensure your Solidity compiler version is set to 0.8.27.
- Double-check that your Ethereum wallet is connected to the correct network.
- Make sure the address provided in the mint or burn functions holds enough tokens when burning.
```
solc --version // To check the installed Solidity compiler version
```

## Authors
Jericho L. Menguito

202110360@fit.edu.ph


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
