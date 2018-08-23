<template>
  <div>
    HELLO WORLD
  </div>
</template>

<script>
import Web3 from "web3";
if (typeof web3 !== 'undefined') {
  web3 = new Web3(web3.currentProvider);
} else {
  // set the provider you want from Web3.providers
  web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
}

let coinbase;
web3.eth.getCoinbase().then((result) => web3.eth.getBalance(result)).then((result) => console.log(result))


export default {
  data: () => ({
    money: web3.currentProvider,
  })
}
</script>

<style>

</style>
