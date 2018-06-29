var contract1 = artifacts.require("./Contract1.sol");

module.exports = function(deployer) {
  deployer.deploy(contract1);
};