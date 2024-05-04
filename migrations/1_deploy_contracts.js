var Main = artifacts.require("./Main.sol");
var Register = artifacts.require("./Register.sol");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(Main);
  deployer.deploy(Register);
};
