module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 7545,            // Standard Ganache port
      network_id: "*",       // Any network (default: none)
    },
  },
  compilers: {
    solc: {
      version: "0.8.19",     // Specify compiler version
      settings: {
        optimizer: {
          enabled: false,   // Disable optimizer (default: false)
          runs: 200,        // Optimize for how many times you want to run
        },
        evmVersion: "petersburg" // EVM version (default: "istanbul")
      },
    },
  },
};
