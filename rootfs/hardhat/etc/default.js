module.exports = {
  networks: {
    hardhat: {
      forking: {
        url: "https://eth.web3.anon.global",
      },
      mining: {
        auto: true,
      }
    }
  }
}