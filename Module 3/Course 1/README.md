# Error Handling in FPS Game

This Solidity project demonstrates various error-handling mechanisms for managing the health of a player in a first-person shooter (FPS) game. The contract showcases the use of `require()`, `assert()`, and `revert()` to validate actions such as taking damage or healing, ensuring robust and secure logic for managing player health.

## Description

The **FPSGame** smart contract manages a player's health by allowing actions such as taking damage and healing. It incorporates error-handling mechanisms to ensure valid gameplay conditions, such as preventing invalid damage or healing values. By using Solidity's error-handling methods (`require()`, `assert()`, `revert()`), the contract ensures that health stays within defined boundaries and invalid inputs are rejected.

## Features

- **Health Management**: Tracks and updates player health within the range of `0` to `100`.
- **Error Handling**:
  - Ensures damage does not exceed `100` and is always greater than `0`.
  - Validates healing inputs to maintain health within maximum limits.
- **Event Logging**:
  - Emits events to log damage and healing actions for transparency.

## Getting Started

### Prerequisites

To interact with this smart contract, you will need:
- **Remix IDE** or another Solidity development environment.
- A connection to the Ethereum blockchain (e.g., local blockchain like **Ganache** or a testnet such as Ropsten or Sepolia).
- A wallet with test Ether (e.g., **MetaMask**).

### Installing

1. Download or clone the project files into your local environment.
2. Open the Remix IDE at [https://remix.ethereum.org/](https://remix.ethereum.org/).
3. Load the `FPSGame` Solidity file in Remix.

### Executing Program

To deploy and interact with the contract:
1. Open Remix IDE and create a new file with the `FPSGame` Solidity code.
2. Compile the code using the Solidity compiler (version 0.8.27).
3. Deploy the contract to a local blockchain or testnet.
4. Interact with the following contract functions:
   - `takeDamage(uint _damage)`: Reduces the player's health. Throws an error if `_damage` exceeds `100` or is `0`.
   - `heal(uint _healAmount)`: Restores the player's health. Ensures health does not exceed `100`.
   - `getHealth()`: Returns the current health of the player. Throws an error if health is `0`.

### Example Interaction

- **Taking Damage**:
  ```solidity
  takeDamage(30); // Reduces health by 30, emits a Damaged event
  ### Error Handling Highlights

- **`require()`**:
  - Ensures valid inputs (e.g., damage must be between `1` and `100`).
  - Validates that healing inputs are positive.
- **`assert()`**:
  - Ensures health never falls below `0` or exceeds `100`.
- **`revert()`**:
  - Stops execution if health is `0` when attempting to retrieve it.

### Help

Common issues might include:
- **Error: Damage must not exceed 100**: Ensure the damage value is within the range of `1` to `100`.
- **Error: Player health is not available or has been depleted**: This occurs when the player's health is `0`. Heal the player to restore health.

For debugging, use Remix's built-in tools to analyze transactions and errors.

## Authors

**Jericho L. Menguito**  
202110360@fit.edu.ph  

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.

