// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

contract ErrorHandling {
    uint public balance;

    // Function to deposit funds
    function deposit(uint _amount) public {
        require(_amount > 50, "Deposit amount must be greater than 50 pesos.");
        balance += _amount;
    }

    // Function to withdraw funds
    function withdraw(uint _amount) public {
        // Ensure that the balance is sufficient for the withdrawal
        if (_amount > balance) {
            revert("Insufficient balance for withdrawal.");
        }

        balance -= _amount;
        // Assert that balance will not go negative after withdrawal
        assert(balance >= 0);
    }

    // Check balance
    function getBalance() public view returns (uint) {
        return balance;
    }
}
