//```solidity code: 
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
//our contract will checks if a user has a sufficient balance before allowing them to send a specified amount:
contract condition{
    // Define a payable address for the user
    address payable user = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
  
    receive() external payable { }

    //Function to check the balance of a specified address
    function confirmBalance(address _addr, uint _amount) public view returns (uint256) {
        uint256 bal = _addr.balance;
    
        if (bal < _amount * 1 ether) {
            revert("Account does not have enough balance");
        }
        return bal;
    }
   
    // Function to send Ether from the contract to the user

    function sendEth(uint _ether) public {
     
    uint amount = _ether;
    // Store the initial balance of the user

    uint256 initialUserBalance = user.balance;
    bool sent = user.send(amount * 1 ether);
    require(sent, "Transaction failed!");

    // Assert to ensure that the user's balance increased by the expected amount
        assert(user.balance == initialUserBalance + (amount * 1 ether));
    
}
   
}
