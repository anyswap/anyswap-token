var token = artifacts.require("AnyswapToken");

module.exports = function(deployer) {
  deployer.deploy(token);
};
