var contract1 = artifacts.require("./StateVariables.sol");

module.exports = function(deployer) {
  deployer.deploy(contract1);
};