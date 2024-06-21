# EtherBalanceChecker

This repository contains a Solidity smart contract that checks if a user has a sufficient balance before allowing them to send a specified amount of Ether. The contract provides functionalities to confirm account balances and transfer Ether securely.

## Contract Overview

### condition Contract

#### Features:
- **Confirm Balance**: Check if an account has enough balance before sending Ether.
- **Send Ether**: Transfer Ether from the contract to a specified user while ensuring the balance is sufficient.

### Functions:
1. **confirmBalance(address _addr, uint _amount)**:
    - Checks if `_addr` has at least `_amount` Ether.
    - Reverts the transaction if the balance is insufficient.
    
2. **sendEth(uint _ether)**:
    - Transfers `_ether` amount of Ether from the contract to the user.
    - Ensures the transaction succeeds and the user’s balance is updated correctly.

## Usage

1. **Deploy the Contract**: Deploy the `condition` contract on the Ethereum network.
2. **Deposit Ether**: Send Ether to the contract's address to fund it.
3. **Confirm Balance**: Use `confirmBalance` to check if an address has enough balance before transferring.
4. **Send Ether**: Use `sendEth` to transfer Ether from the contract to the user.

## License

This project is licensed under the GPL-3.0 License - see the LICENSE file for details.
