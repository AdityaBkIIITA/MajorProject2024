// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Register {
    enum Role { NormalUser, SoftwareFirm, RegulatoryBody }

    struct User {
        string userName;
        string email;
        Role role;
        string signedMessage;
    }

    mapping(address => User) public users;

    event UserRegistered(address indexed userAddress, string userName, string email, Role role);

    function register(string memory _userName, string memory _email, Role _role, string memory _signedMessage) external {
        require(bytes(_userName).length > 0, "Username cannot be empty");
        require(bytes(_email).length > 0, "Email cannot be empty");

        users[msg.sender] = User(_userName, _email, _role, _signedMessage);
        emit UserRegistered(msg.sender, _userName, _email, _role);
    }

    function getUser(address _userAddress) external view returns (string memory, string memory, Role, string memory) {
        User memory user = users[_userAddress];
        return (user.userName, user.email, user.role, user.signedMessage);
    }
}
