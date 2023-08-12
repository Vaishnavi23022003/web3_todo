module.exports = {
  networks: {
    development: {
      //this is talking to the local Ganache blockchain
      host: "127.0.0.1",
      port: 7545,
      network_id: "*", // Match any network id
    },
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200,
    },
  },
};
