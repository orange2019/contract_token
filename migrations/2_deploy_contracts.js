
var KxmCoin = artifacts.require('./KxmCoin.sol')

module.exports = function (deployer) {
  deployer.deploy(KxmCoin)
}
