// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

contract FPSGame {
    uint public playerHealth = 100; // Default to max health at the start
    uint public maxHealth = 100;

    // Event to log damage taken by the player
    event Damaged(uint damage, uint newHealth);

    // Event to log healing of the player
    event Healed(uint healAmount, uint newHealth);

    // Function to inflict damage on the player
    function takeDamage(uint _damage) public {
        require(_damage > 0, "Damage must be greater than 0.");
        require(_damage <= 100, "Damage must not exceed 100."); // New validation

        // Ensure the player does not go below 0 health
        if (_damage > playerHealth) {
            playerHealth = 0;
        } else {
            playerHealth -= _damage;
        }

        emit Damaged(_damage, playerHealth);

        // Assert that health is never negative
        assert(playerHealth >= 0);
    }

    // Function to heal the player
    function heal(uint _healAmount) public {
        require(_healAmount > 0, "Heal amount must be greater than 0.");
        require(_healAmount <= 75, "Heal must not exceed 75."); // New validation

        // Ensure health does not exceed maxHealth
        if (playerHealth + _healAmount > maxHealth) {
            playerHealth = maxHealth;
        } else {
            playerHealth += _healAmount;
        }

        emit Healed(_healAmount, playerHealth);

        // Assert that health is never above maxHealth
        assert(playerHealth <= maxHealth);
    }

    // Function to get the current health of the player
    function getHealth() public view returns (uint) {
        // Revert if health is not initialized or is invalid (e.g., zero or negative)
        if (playerHealth == 0) {
            revert("Player health is not available or has been depleted.");
        }

        return playerHealth;
    }
}
