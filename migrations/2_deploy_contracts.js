// Whenever we deploy a smart contract to a chain we are chainging the state of the chain
// thereby we need a migration to chainge the state, like migration of DB in Django

const ToDo = artifacts.require("ToDo");

module.exports = function (deployer) {
  deployer.deploy(ToDo);
};
